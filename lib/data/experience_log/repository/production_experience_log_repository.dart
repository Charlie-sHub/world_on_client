import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(as: ExperienceLogRepositoryInterface, env: [Environment.prod])
class ProductionExperienceLogRepository implements ExperienceLogRepositoryInterface {
  final _logger = Logger();

  final FirebaseFirestore _firestore;

  ProductionExperienceLogRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> addExperienceToLog(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencesToDoIds": FieldValue.arrayUnion([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissExperienceFromLog(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencesToDoIds": FieldValue.arrayRemove([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchUserLog() async* {
    final _userDocument = await _firestore.userDocument();
    final _userDto = UserDto.fromFirestore(await _userDocument.get());
    if (_userDto.experiencesToDoIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _userDto.experiencesToDoIds,
        10,
      );
      final _combinedStreamList = _auxListOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  "id",
                  whereIn: _idList,
                )
                .orderBy(
                  "creationDate",
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot> values) {
          final _experienceList = <Experience>[];
          for (final _snapshot in values) {
            for (final document in _snapshot.docs) {
              final _experience = ExperienceDto.fromFirestore(document).toDomain();
              _experienceList.add(_experience);
            }
          }
          return _experienceList;
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
        (error) => left(onError(error)),
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

  Either<Failure, Unit> onFirebaseException(FirebaseException e) {
    _logger.e("FirebaseException: ${e.message}");
    return left(
      const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      ),
    );
  }

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
