import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

@LazySingleton(as: MainFeedRepositoryInterface, env: [Environment.prod])
class ProductionMainFeedRepository implements MainFeedRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;

  ProductionMainFeedRepository(
    this._firestore,
    this._logger,
  );

  @override
  Stream<Either<Failure, KtList<Experience>>> watchFeed() async* {
    // The limit is just a number that made sense at the time
    const promotedExperiencesLimit = 5;
    final userDto = await _firestore.currentUserDto();
    if (userDto.followedUsersIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.followedUsersIds,
        10,
      );
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.creatorId,
                  whereIn: idList,
                )
                .snapshots(),
          )
          .toList();
      final promotedStream = _firestore.experienceCollection
          .where(
            ExperienceFields.isPromoted,
            isEqualTo: true,
          )
          .limit(promotedExperiencesLimit)
          .snapshots();
      final promotedStreamQuery = await promotedStream.first;
      for (final experienceDoc in promotedStreamQuery.docs) {
        final experience = experienceDoc.data().toDomain();
        final creator = experience.creator;
        _firestore.userCollection.doc(creator.id.getOrCrash()).update(
          {
            "${UserFields.promotionPlan}.timesSeen": FieldValue.increment(1),
          },
        );
      }
      combinedStreamList.add(promotedStream);
      // TODO: Rework these streams so they are updated properly
      // Right now everything works except that the streams can't be properly updated by firestore
      // Probably due to all the streams having to be updated for CombineLatestStream to combine them
      // There has to be a proper solution to this,
      // This can't be the only app that needs to filter by more than 10 items (fucking absurd limitation imo)
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<ExperienceDto>> values) {
          final documentList = <QueryDocumentSnapshot<ExperienceDto>>[];
          for (final snapshot in values) {
            documentList.addAll(snapshot.docs);
          }
          final experienceDtoList = documentList
              .map(
                (document) => document.data(),
              )
              .toList();
          experienceDtoList.sort(
            (a, b) => b.creationDate.compareTo(
              a.creationDate,
            ),
          );
          // .toSet().toList() is there to eliminate duplicates
          final experienceList = experienceDtoList
              .toSet()
              .toList()
              .map(
                (experienceDto) => experienceDto.toDomain(),
              )
              .toList();
          return experienceList;
        },
      ).map(
        (experiences) {
          if (experiences.isNotEmpty) {
            return right<Failure, KtList<Experience>>(
              experiences.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Experience>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
        (error, _) => left(
          _onError(error),
        ),
      );
    } else {
      // Not sure about creating a stream out of nowhere, but it's the best solution for now
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(
          errorString: "Firebase error: ${error.message}",
        ),
      );
    } else if (error is FormatException) {
      _logger.e("FormatException: ${error.message}");
      return Failure.coreDomain(
        CoreDomainFailure.unknownDomainLayerError(
          errorString: "Format exception: ${error.message}",
        ),
      );
    } else {
      _logger.e("Unknown error: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown error"),
      );
    }
  }
}
