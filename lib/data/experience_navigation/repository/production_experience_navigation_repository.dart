import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart' as world_on_coordinates;
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.prod])
class ProductionExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  final _logger = Logger();
  final _geo = Geoflutterfire();
  final FirebaseFirestore _firestore;

  ProductionExperienceNavigationRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> finishExperience(UniqueId experienceId) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          UserFields.experiencesDoneIds: FieldValue.arrayUnion([experienceId.getOrCrash()]),
        },
      );
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
        {
          ExperienceFields.doneBy: FieldValue.arrayUnion([_userDocument.id]),
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
          UserFields.experiencesLikedIds: FieldValue.arrayUnion([experienceId.getOrCrash()]),
        },
      );
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
        {
          ExperienceFields.likedBy: FieldValue.arrayUnion([_userDocument.id]),
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
          UserFields.experiencesLikedIds: FieldValue.arrayRemove([experienceId.getOrCrash()]),
        },
      );
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
        {
          ExperienceFields.likedBy: FieldValue.arrayRemove([_userDocument.id]),
        },
      );
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  @override
  Future<Either<Failure, Unit>> rateDifficulty({
    required Difficulty difficulty,
    required UniqueId experienceId,
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
      final _preUserLevel = _currentUser.level.getOrCrash();
      bool _leveledUp = false;
      int _experiencePointsAwarded;
      // I don't like that string hard coded
      // But it will work for now
      final _itemList = _currentUser.items.where(
        (item) => item.id.getOrCrash() == "81539390-6807-11eb-a79a-01068a2daab7",
      );
      final _item = _itemList.isNotEmpty ? _itemList.first : null;
      if (_item != null) {
        if (DateTime.now().isAfter(_item.boughtDate.add(Duration(days: _item.timeLimitInDays)))) {
          _experiencePointsAwarded = experiencePoints;
          final _userXp = _getUserXp(
            _experiencePointsAwarded,
            _currentUser,
          );
          final _postUserLevel = Levels.levelAt(_userXp);
          _leveledUp = _postUserLevel > _preUserLevel;
          final _updatedUser = _currentUser.copyWith(
            experiencePoints: ExperiencePoints(_userXp),
            level: UserLevel(_postUserLevel),
            coins: _currentUser.coins + 1,
            items: _currentUser.items.toImmutableSet().minusElement(_item).dart,
          );
          final _jsonUser = UserDto.fromDomain(_updatedUser).toJson();
          await _firestore.userCollection.doc(_currentUser.id.getOrCrash()).update(_jsonUser);
        } else {
          _experiencePointsAwarded = experiencePoints * 2;
          final _userXp = _getUserXp(
            _experiencePointsAwarded,
            _currentUser,
          );
          final _postUserLevel = Levels.levelAt(_userXp);
          _leveledUp = _postUserLevel > _preUserLevel;
          await _updateLevelExperiencePoints(
            _userDocument,
            _experiencePointsAwarded,
            _postUserLevel,
          );
        }
      } else {
        _experiencePointsAwarded = experiencePoints;
        final _userXp = _getUserXp(
          _experiencePointsAwarded,
          _currentUser,
        );
        final _postUserLevel = Levels.levelAt(_userXp);
        _leveledUp = _postUserLevel > _preUserLevel;
        await _updateLevelExperiencePoints(
          _userDocument,
          _experiencePointsAwarded,
          _postUserLevel,
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

  int _getUserXp(
    int _experiencePointsAwarded,
    User _currentUser,
  ) =>
      _experiencePointsAwarded + _currentUser.experiencePoints.getOrCrash();

  Future _updateLevelExperiencePoints(
    DocumentReference _userDocument,
    int experiencePoints,
    int _userLevel,
  ) async {
    await _userDocument.update(
      {
        UserFields.experiencePoints: FieldValue.increment(experiencePoints),
        UserFields.level: _userLevel,
        UserFields.coins: FieldValue.increment(1),
      },
    );
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(
    world_on_coordinates.Coordinates coordinates,
  ) {
    // TODO: implement loadSurroundingExperiences
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchRecommendedExperiences() async* {
    final _currentUser = await _firestore.currentUser();
    // High accuracy is not really needed
    // but for some reason low accuracy takes too long too obtain
    final _position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final _flutterFireGeoposition = _geo.point(
      latitude: _position.latitude,
      longitude: _position.longitude,
    );
    final _interestIds = _currentUser.interestsIds
        .map(
          (_uniqueId) => _uniqueId.getOrCrash(),
        )
        .toList();
    if (_interestIds.isNotEmpty) {
      yield* _geo
          .collection(
            collectionRef: _firestore.experienceCollection,
          )
          .within(
            center: _flutterFireGeoposition,
            radius: 50,
            field: ExperienceFields.position,
          )
          .map(
            (_documentList) => _documentList
                .map(
                  (_document) => ExperienceDto.fromFirestore(_document).toDomain(),
                )
                .toList(),
          )
          .map(
        (experiences) {
          // Don't like filtering here, but couldn't make the query work
          // In any case, it's better to filter by location first and then by tags
          // the first filter should take out most of the experiences that don't fit
          if (experiences.isNotEmpty) {
            final _filteredExperienceList = experiences.where(
              (_experience) {
                final _experienceTagIds = _experience.tags
                    .getOrCrash()
                    .map(
                      (_tag) => _tag.id.getOrCrash(),
                    )
                    .asList();
                final _containsId = _interestIds.any(
                  (_id) => _experienceTagIds.contains(_id),
                );
                final _isNotCreator = _experience.creator.id != _currentUser.id;
                return _containsId && _isNotCreator || _experience.isPromoted;
              },
            ).toList();
            _filteredExperienceList.sort(
              (_a, _b) => _b.creationDate.getOrCrash().compareTo(
                    _a.creationDate.getOrCrash(),
                  ),
            );
            for (final _experience in _filteredExperienceList) {
              final _creator = _experience.creator;
              _firestore.userCollection.doc(_creator.id.getOrCrash()).update(
                {
                  "${UserFields.promotionPlan}.timesSeen": FieldValue.increment(1),
                },
              );
            }
            if (_filteredExperienceList.isNotEmpty) {
              return right<Failure, KtList<Experience>>(
                _filteredExperienceList.toImmutableList(),
              );
            } else {
              return left<Failure, KtList<Experience>>(
                const Failure.coreData(
                  CoreDataFailure.notFoundError(),
                ),
              );
            }
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
