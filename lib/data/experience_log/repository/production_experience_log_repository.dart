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
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(as: ExperienceLogRepositoryInterface, env: [Environment.prod])
class ProductionExperienceLogRepository
    implements ExperienceLogRepositoryInterface {
  final Logger _logger;

  final FirebaseFirestore _firestore;

  ProductionExperienceLogRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> addExperienceToLog(
    UniqueId experienceId,
  ) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencesToDoIds:
              FieldValue.arrayUnion([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissExperienceFromLog(
    UniqueId experienceId,
  ) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencesToDoIds:
              FieldValue.arrayRemove([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchUserLog() async* {
    final userDto = await _firestore.currentUserDto();
    if (userDto.experiencesToDoIds.isNotEmpty) {
      final iterableOfIdLists = partition(
        userDto.experiencesToDoIds,
        10,
      );
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.id,
                  whereIn: idList,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<ExperienceDto>> values) {
          final experienceList = <Experience>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              final experience = document.data().toDomain();
              experienceList.add(experience);
            }
          }
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
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
