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
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
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
      return _onError(exception);
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
      return _onError(exception);
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
      return _onError(exception);
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
      return _onError(exception);
    }
  }

  // Don't like returning this map to be honest
  // Don't like this whole function to be honest
  @override
  Future<Either<Failure, Map>> rewardUser(int experiencePoints) async {
    try {
      final _userDocument = await _firestore.userDocument();
      // TODO: Change the way items are handled
      // Items should just be a string of ids on the user document
      // Those ids would be retrieved when needed
      // Instead of having the entire objects inside the users.
      final _currentUser = await _firestore.currentUser();
      int _userLevel = _currentUser.level.getOrCrash();
      final _experiencePointsToNextLevel = Levels.experiencePointsRequired(_userLevel + 1);
      bool _leveledUp = false;
      int _experiencePointsAwarded;
      // I don't like that string hard coded
      // But it will work for now
      final _itemList = _currentUser.items.where((item) => item.id.getOrCrash() == "81539390-6807-11eb-a79a-01068a2daab7");
      final _item = _itemList.isNotEmpty ? _itemList.first : null;
      if (_item != null) {
        if (DateTime.now().isAfter(_item.boughtDate.add(Duration(days: _item.timeLimitInDays)))) {
          _experiencePointsAwarded = experiencePoints;
          final _userXp = _experiencePointsAwarded + _currentUser.experiencePoints.getOrCrash() - Levels.experiencePointsRequired(_userLevel);
          if (_userXp >= _experiencePointsToNextLevel) {
            _userLevel++;
            _leveledUp = true;
          }
          final _updatedUser = _currentUser.copyWith(
            experiencePoints: ExperiencePoints(_currentUser.experiencePoints.getOrCrash() + _experiencePointsAwarded),
            level: UserLevel(_userLevel),
            coins: _currentUser.coins + 1,
            items: _currentUser.items.toImmutableSet().minusElement(_item).asSet(),
          );
          final _jsonUser = UserDto.fromDomain(_updatedUser).toJson();
          await _firestore.userCollection.doc(_currentUser.id.getOrCrash()).update(_jsonUser);
        } else {
          _experiencePointsAwarded = experiencePoints * 2;
          final _userXp = _experiencePointsAwarded + _currentUser.experiencePoints.getOrCrash() - Levels.experiencePointsRequired(_userLevel);
          if (_userXp >= _experiencePointsToNextLevel) {
            _userLevel++;
            _leveledUp = true;
          }
          await _updateLevelExperiencePoints(
            _userDocument,
            _experiencePointsAwarded,
            _userLevel,
          );
        }
      } else {
        _experiencePointsAwarded = experiencePoints;
        final _userXp = _experiencePointsAwarded + _currentUser.experiencePoints.getOrCrash() - Levels.experiencePointsRequired(_userLevel);
        if (_userXp >= _experiencePointsToNextLevel) {
          _userLevel++;
          _leveledUp = true;
        }
        await _updateLevelExperiencePoints(
          _userDocument,
          _experiencePointsAwarded,
          _userLevel,
        );
      }
      final _resultMap = {
        "leveledUp": _leveledUp,
        "experiencePoints": _experiencePointsAwarded,
      };
      return right(_resultMap);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  Future _updateLevelExperiencePoints(DocumentReference _userDocument, int experiencePoints, int _userLevel) async {
    await _userDocument.update(
      {
        "experiencePoints": FieldValue.increment(experiencePoints),
        "level": _userLevel,
        "coins": FieldValue.increment(1),
      },
    );
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    // TODO: implement loadSurroundingExperiences
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchRecommendedExperiences() async* {
    final _currentUser = await _firestore.currentUser();
    final _interestIds = _currentUser.interestsIds
        .map(
          (uniqueId) => uniqueId.getOrCrash(),
        )
        .toList();
    if (_interestIds.isNotEmpty) {
      final _auxListOfIdLists = partition(
        _interestIds,
        10,
      );
      final _combinedStreamList = _auxListOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  "tagsIds",
                  arrayContainsAny: _idList,
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
        (error) => _onStreamError(error),
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

  Either<Failure, KtList<Experience>> _onStreamError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
        ),
      );
    } else if (error is AssertionError) {
      _logger.e("Failed assertion error");
      return left(
        const Failure.coreData(
          CoreDataFailure.serverError(errorString: "Failed assertion error"),
        ),
      );
    } else {
      _logger.e("Unknown server error, type: ${error.runtimeType}");
      return left(
        const Failure.coreData(
          CoreDataFailure.serverError(errorString: "Unknown server error"),
        ),
      );
    }
  }

  Either<Failure, T> _onError<T>(FirebaseException exception) {
    _logger.e("FirebaseException: ${exception.message}");
    return left(
      const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      ),
    );
  }
}
