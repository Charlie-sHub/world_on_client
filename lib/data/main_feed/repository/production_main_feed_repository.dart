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
    const _promotedExperiencesLimit = 5;
    final _userDto = await _firestore.currentUserDto();
    if (_userDto.followedUsersIds.isNotEmpty) {
      final _iterableOfIdLists = partition(
        _userDto.followedUsersIds,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.creatorId,
                  whereIn: _idList,
                )
                .snapshots(),
          )
          .toList();
      final _promotedStream = _firestore.experienceCollection
          .where(
            ExperienceFields.isPromoted,
            isEqualTo: true,
          )
          .limit(_promotedExperiencesLimit)
          .snapshots();
      final _promotedStreamQuery = await _promotedStream.first;
      for (final _experienceDoc in _promotedStreamQuery.docs) {
        final _experience = _experienceDoc.data().toDomain();
        final _creator = _experience.creator;
        _firestore.userCollection.doc(_creator.id.getOrCrash()).update(
          {
            "${UserFields.promotionPlan}.timesSeen": FieldValue.increment(1),
          },
        );
      }
      _combinedStreamList.add(_promotedStream);
      // TODO: Rework these streams so they are updated properly
      // Right now everything works except that the streams can't be properly updated by firestore
      // Probably due to all the streams having to be updated for CombineLatestStream to combine them
      // There has to be a proper solution to this,
      // This can't be the only app that needs to filter by more than 10 items (fucking absurd limitation imo)
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot<ExperienceDto>> values) {
          final _documentList = <QueryDocumentSnapshot<ExperienceDto>>[];
          for (final _snapshot in values) {
            _documentList.addAll(_snapshot.docs);
          }
          final _experienceDtoList = _documentList
              .map(
                (_document) => _document.data(),
              )
              .toList();
          _experienceDtoList.sort(
            (_a, _b) => _b.creationDate.compareTo(
              _a.creationDate,
            ),
          );
          // .toSet().toList() is there to eliminate duplicates
          final _experienceList = _experienceDtoList
              .toSet()
              .toList()
              .map(
                (_experienceDto) => _experienceDto.toDomain(),
              )
              .toList();
          return _experienceList;
        },
      ).map(
        (_experiences) {
          if (_experiences.isNotEmpty) {
            return right<Failure, KtList<Experience>>(
              _experiences.toImmutableList(),
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
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
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
