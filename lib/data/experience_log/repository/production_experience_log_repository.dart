import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
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
    // TODO: Order by addition date
    // Gotta solve the dates issue first and add an addition date
    // Maybe these should be a map of the experience id and the date it was added to the log
    if (_userDto.followedUsersIds.isNotEmpty) {
      yield* _firestore.experienceCollection
          .where(
            FieldPath.documentId,
            arrayContainsAny: _userDto.experiencesToDoIds.toList(),
          )
          .snapshots()
          .map(
            (snapshot) => snapshot.docs.map(
              (document) => ExperienceDto.fromFirestore(document).toDomain(),
            ),
          )
          .map(
            (experiences) => right<Failure, KtList<Experience>>(
              experiences.toImmutableList(),
            ),
          )
          .onErrorReturnWith(
            (error) => left(
              onError(error),
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
      _logger.e("Unknown server error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
