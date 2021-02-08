import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/item/item_code.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
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
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
        {
          "doneBy": FieldValue.arrayUnion([_userDocument.id]),
        },
      );
      return right(unit);
    } on FirebaseException catch (exception) {
      return onError(exception);
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
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
        {
          "likedBy": FieldValue.arrayUnion([_userDocument.id]),
        },
      );
      return right(unit);
    } on FirebaseException catch (exception) {
      return onError(exception);
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
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
        {
          "likedBy": FieldValue.arrayRemove([_userDocument.id]),
        },
      );
      return right(unit);
    } on FirebaseException catch (exception) {
      return onError(exception);
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
    // Right now it doesn't change anything, better to simply leave the creator's original difficulty
    try {
      /*
      await _firestore.experienceCollection.doc(experienceId.getOrCrash()).update(
        {
          "difficulty": difficulty.getOrCrash(),
        },
      );
       */
      return right(unit);
    } on FirebaseException catch (exception) {
      return onError(exception);
    }
  }

  @override
  Future<Either<Failure, Unit>> rewardUser(int experiencePoints) async {
    try {
      // I don't like doing this at all
      // Having to get the user just to use the experience points
      // Neither do i like this being in the data layer
      final _userDocument = await _firestore.userDocument();
      // TODO: Change the way items are handled
      // Items should just be a string of ids on the user document
      // Those ids would be retrieved when needed
      // Instead of having the entire objects inside the users.
      final _currentUser = await _firestore.currentUser();
      if (_currentUser.items.any(
        (item) {
          if (item.code == ItemCode.expBoost) {
            return true;
          } else {
            return false;
          }
        },
      )) {
        final _pointsPlusBonus = experiencePoints * 2;
        final _userLevel = Levels.levelAt(_pointsPlusBonus + _currentUser.experiencePoints.getOrCrash());
        await _updateLevelExperiencePoints(_userDocument, _pointsPlusBonus, _userLevel);
      } else {
        final _userLevel = Levels.levelAt(experiencePoints + _currentUser.experiencePoints.getOrCrash());
        await _updateLevelExperiencePoints(_userDocument, experiencePoints, _userLevel);
      }
      return right(unit);
    } on FirebaseException catch (exception) {
      return onError(exception);
    }
  }

  Future _updateLevelExperiencePoints(DocumentReference _userDocument, int experiencePoints, int _userLevel) async {
    await _userDocument.update(
      {
        "experiencePoints": FieldValue.increment(experiencePoints),
        "level": _userLevel,
      },
    );
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    // TODO: implement loadSurroundingExperiences
    throw UnimplementedError();
  }

  Either<Failure, Unit> onError(FirebaseException exception) {
    _logger.e("FirebaseException: ${exception.message}");
    return left(
      const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      ),
    );
  }
}
