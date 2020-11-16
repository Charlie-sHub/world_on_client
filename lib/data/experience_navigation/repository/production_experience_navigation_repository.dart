import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.prod])
class ProductionExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  final _logger = Logger();

  final FirebaseFirestore _firestore;

  ProductionExperienceNavigationRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> finishExperience(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencesDoneIds": FieldValue.arrayUnion([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onError(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> likeExperience(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencesLikedIds": FieldValue.arrayUnion([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onError(e);
    }
  }
  
  @override
  Future<Either<Failure, Unit>> dislikeExperience(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencesLikedIds": FieldValue.arrayRemove([experienceId.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onError(e);
    }
  }
  
  @override
  Future<Either<Failure, Unit>> rateDifficulty({
    Difficulty difficulty,
    UniqueId experienceId,
  }) async {
    // TODO: Properly implement this
    // The difficulty should be the average of all user's rating, not just the rating of the last user
    // But how to implement that? perhaps with a backend function
    try {
      await _firestore.experienceCollection.doc(experienceId.getOrCrash()).update(
        {
          "difficulty": difficulty.getOrCrash(),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onError(e);
    }
  }
  
  @override
  Future<Either<Failure, Unit>> rewardUser(UniqueId experienceId) async {
    try {
      // TODO: Implement this in a way it doesn't need to get the experience again
      // Could be by sending the experience object from domain or by using a backend function and just sending the id
      final _experienceDocument = await _firestore.experienceCollection.doc(experienceId.getOrCrash()).get();
      final _experienceDto = ExperienceDto.fromFirestore(_experienceDocument);
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "experiencePoints": FieldValue.increment(_experienceDto.difficulty * 10),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onError(e);
    }
  }
  
  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    // TODO: implement loadSurroundingExperiences
    throw UnimplementedError();
  }
  
  Either<Failure, Unit> onError(FirebaseException e) {
    _logger.e("FirebaseException: ${e.message}");
    return left(
      const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      ),
    );
  }
}
