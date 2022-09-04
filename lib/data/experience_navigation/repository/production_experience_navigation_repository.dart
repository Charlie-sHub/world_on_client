import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
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
import 'package:worldon/data/core/models/experience/objective_list/objective_id_list_dto.dart';
import 'package:worldon/data/core/models/experience/objective_list/objective_id_list_fields.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart'
    as world_on_coordinates;
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(
  as: ExperienceNavigationRepositoryInterface,
  env: [Environment.prod],
)
class ProductionExperienceNavigationRepository
    implements ExperienceNavigationRepositoryInterface {
  final Logger _logger;
  final _geo = Geoflutterfire();
  final FirebaseFirestore _firestore;
  final _functions = FirebaseFunctions.instanceFor(region: "europe-west1");

  ProductionExperienceNavigationRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> finishExperience(UniqueId experienceId) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencesDoneIds: FieldValue.arrayUnion(
            [experienceId.getOrCrash()],
          ),
        },
      );
      final experienceDocument = await _firestore.experienceDocumentReference(
        experienceId.getOrCrash(),
      );
      experienceDocument.update(
        {
          ExperienceFields.doneBy: FieldValue.arrayUnion(
            [userDocument.id],
          ),
        },
      );
      _firestore.userCollection
          .doc(
            userDocument.id,
          )
          .saveCollection
          .doc(
            experienceId.getOrCrash(),
          )
          .delete();
      _propagate(experienceId);
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  @override
  Future<Either<Failure, Unit>> likeExperience(UniqueId experienceId) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencesLikedIds: FieldValue.arrayUnion(
            [experienceId.getOrCrash()],
          ),
        },
      );
      final experienceDocument = await _firestore.experienceDocumentReference(
        experienceId.getOrCrash(),
      );
      experienceDocument.update(
        {
          ExperienceFields.likedBy: FieldValue.arrayUnion(
            [userDocument.id],
          ),
        },
      );
      _propagate(experienceId);
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  @override
  Future<Either<Failure, Unit>> dislikeExperience(UniqueId experienceId) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencesLikedIds: FieldValue.arrayRemove(
            [experienceId.getOrCrash()],
          ),
        },
      );
      final experienceDocument = await _firestore.experienceDocumentReference(
        experienceId.getOrCrash(),
      );
      experienceDocument.update(
        {
          ExperienceFields.likedBy: FieldValue.arrayRemove(
            [userDocument.id],
          ),
        },
      );
      _propagate(experienceId);
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  void _propagate(UniqueId experienceId) {
    final propagateUpdateCallable =
        _functions.httpsCallable("propagateExperienceUpdate");
    propagateUpdateCallable.call(
      <String, dynamic>{"experienceId": experienceId.getOrCrash()},
    );
  }

  @override
  Future<Either<Failure, Unit>> rateDifficulty({
    required Difficulty difficulty,
    required UniqueId experienceId,
  }) async {
    // The difficulty should be the average of all user's rating, not just the rating of the last user
    // But how to implement that? perhaps with a backend function
    // Right now it doesn't change anything, better to simply leave the creator's original difficulty

    // What about a sub-document that stores all the ratings
    // Then a cloud function reads it and updates the experience document with the average rating
    try {
      /*
      final _experienceDocument = await _firestore.experienceDocument(experienceId.getOrCrash());
      _experienceDocument.update(
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

  @override
  Future<Either<Failure, Unit>> rewardUser(
    int experiencePoints,
    int userLevel,
  ) async {
    try {
      final userDocument = await _firestore.currentUserReference();
      userDocument.update(
        {
          UserFields.experiencePoints: FieldValue.increment(experiencePoints),
          UserFields.level: userLevel,
          UserFields.coins: FieldValue.increment(1),
        },
      );
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(
    world_on_coordinates.Coordinates coordinates,
  ) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>>
      watchRecommendedExperiences() async* {
    final userDto = await _firestore.currentUserDto();
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final flutterFireGeoposition = _geo.point(
      latitude: position.latitude,
      longitude: position.longitude,
    );
    if (userDto.interestsIds.isNotEmpty) {
      const double kmRadius = 20;
      yield* _geo
          .collection(
            collectionRef: _firestore.collection("experiences"),
          )
          .within(
            center: flutterFireGeoposition,
            radius: kmRadius,
            field: ExperienceFields.position,
          )
          .map(
            (documentList) => documentList
                .map(
                  (document) => ExperienceDto.fromJson(document.data()!),
                )
                .toList(),
          )
          .map(
        (experienceDTOs) {
          // Don't like filtering here, but couldn't make the query work
          // In any case, it's better to filter by location first and then by tags
          // the first filter should take out most of the experiences that don't fit
          if (experienceDTOs.isNotEmpty) {
            // TODO: Re-enable some form of filtering at some point
            // The following code belonged inside experienceDTOs.where(...)
            /*
                final experienceTagIds = experience.tags
                    .map(
                      (tag) => tag.id,
                    )
                    .toList();
                final containsInterest = userDto.interestsIds.any(
                  experienceTagIds.contains,
                );
                final isNotCreator = experience.creator.id != userDto.id;
                return containsInterest && isNotCreator ||
                    experience.isPromoted && isNotCreator;
                 */
            final filteredExperienceDtoList = experienceDTOs
                .where(
                  (experience) => experience.creator.id != userDto.id,
                )
                .toList();
            filteredExperienceDtoList.sort(
              (a, b) => b.creationDate.compareTo(
                a.creationDate,
              ),
            );
            for (final experience in filteredExperienceDtoList) {
              final creator = experience.creator;
              _firestore.userCollection.doc(creator.id).update(
                {
                  "${UserFields.promotionPlan}.timesSeen":
                      FieldValue.increment(1),
                },
              );
            }
            if (filteredExperienceDtoList.isNotEmpty) {
              final experienceList = filteredExperienceDtoList.map(
                (experienceDto) => experienceDto.toDomain(),
              );
              return right<Failure, KtList<Experience>>(
                experienceList.toImmutableList(),
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
        (error, _) => _onError(error),
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

  @override
  Future<Either<Failure, ObjectiveList>> saveUserProgress(
    ObjectiveList objectives,
    UniqueId experienceId,
  ) async {
    try {
      final objectiveList = objectives.getOrCrash().dart;
      final currentUserDoc = await _firestore.currentUserReference();
      final saveDocument = await _getSaveDocument(
        currentUserDoc.id,
        experienceId.getOrCrash(),
      );
      if (saveDocument.exists) {
        final objectiveIdList = saveDocument.data();
        final filteredObjectives = objectiveList
            .where(
              (objective) => objectiveIdList!.objectivesIds.contains(
                objective.id.getOrCrash(),
              ),
            )
            .toList();
        final objectiveListFiltered = ObjectiveList(
          filteredObjectives.toImmutableList(),
        );
        return right(objectiveListFiltered);
      } else {
        final objectivesToSave = ObjectiveIdListDto.fromDomain(
          objectives,
        );
        await saveDocument.reference.set(
          objectivesToSave,
        );
        return right(objectives);
      }
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  @override
  Future<Either<Failure, Unit>> accomplishObjective(
    Objective objective,
    UniqueId experienceId,
  ) async {
    try {
      final currentUserDoc = await _firestore.currentUserReference();
      final saveDocument = await _getSaveDocument(
        currentUserDoc.id,
        experienceId.getOrCrash(),
      );
      if (saveDocument.exists) {
        await saveDocument.reference.update(
          {
            ObjectiveIdListFields.objectivesIds: FieldValue.arrayRemove(
              [
                objective.id.getOrCrash(),
              ],
            ),
          },
        );
      }
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  @override
  Future<Either<Failure, Unit>> unAccomplishObjective(
    Objective objective,
    UniqueId experienceId,
  ) async {
    try {
      final currentUserDoc = await _firestore.currentUserReference();
      final saveDocument = await _getSaveDocument(
        currentUserDoc.id,
        experienceId.getOrCrash(),
      );
      if (saveDocument.exists) {
        await saveDocument.reference.update(
          {
            ObjectiveIdListFields.objectivesIds: FieldValue.arrayUnion(
              [
                objective.id.getOrCrash(),
              ],
            ),
          },
        );
      }
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  Future<DocumentSnapshot<ObjectiveIdListDto>> _getSaveDocument(
    String userId,
    String experienceId,
  ) async =>
      _firestore.userCollection
          .doc(userId)
          .saveCollection
          .doc(experienceId)
          .get();

  @override
  Future<Either<Failure, Unit>> removeExperienceBoostItem(Item item) async {
    try {
      final currentUser = await _firestore.currentUser();
      final updatedUser = currentUser.copyWith(
        items: currentUser.items.toImmutableSet().minusElement(item).dart,
      );
      final jsonUser = UserDto.fromDomain(updatedUser).toJson();
      _firestore.userCollection
          .doc(
            currentUser.id.getOrCrash(),
          )
          .update(jsonUser);
      return right(unit);
    } on FirebaseException catch (exception) {
      return _onError(exception);
    }
  }

  Either<Failure, T> _onError<T>(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Firebase error: ${error.message}",
          ),
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
          CoreDataFailure.serverError(errorString: "Unknown data layer error"),
        ),
      );
    }
  }
}
