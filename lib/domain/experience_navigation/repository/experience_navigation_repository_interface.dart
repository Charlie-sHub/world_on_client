import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Repository for the  experience navigation feature
///
/// It has the methods that correspond to the [AsyncUseCase] that require server connection
abstract class ExperienceNavigationRepositoryInterface {
  /// Sends the difficulty as rated by an [User] to the server to it updates the [Experience]'s difficulty value
  Future<Either<Failure, Unit>> rateDifficulty({
    required Difficulty difficulty,
    required UniqueId experienceId,
  });

  /// Sends and amount of experience point so the server rewards the logged in [User]
  Future<Either<Failure, Unit>> rewardUser(
    int experiencePoints,
    int userLevel,
  );

  /// Removes an expired experience boost [Item]
  Future<Either<Failure, Unit>> removeExperienceBoostItem(Item item);

  /// Sends the ID of an [Experience] so the server adds the [Experience] to the logged in [User]'s liked list
  Future<Either<Failure, Unit>> likeExperience(UniqueId experienceId);

  /// Sends the ID of an [Experience] so the server removes the [Experience] from the logged in [User]'s liked list
  Future<Either<Failure, Unit>> dislikeExperience(UniqueId experienceId);

  /// Sends the IDs of an [Experience] so the server adds the [Experience] to the logged in [User]'s done list
  Future<Either<Failure, Unit>> finishExperience(UniqueId experienceId);

  /// Updates the [Experience] document that saves the progress of the [User]
  /// removing an accomplished [Objective] from it
  Future<Either<Failure, Unit>> accomplishObjective(Objective objective, UniqueId experienceId);

  /// Updates the [Experience] document that saves the progress of the [User]
  /// adding an un-accomplished [Objective] from it
  Future<Either<Failure, Unit>> unAccomplishObjective(Objective objective, UniqueId experienceId);

  /// Sends the ID of an [Experience] and its [ObjectiveList] so the server creates a sub-document to the [User] saving the progress
  /// In the case the document already exists then it reads from it to determine the [User]'s progress
  Future<Either<Failure, ObjectiveList>> saveUserProgress(ObjectiveList objectiveList, UniqueId experienceId);

  /// Sends a pair of latitude and longitude values and returns a [KtSet] of [Experience]s located within a certain radius
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates);

  /// Returns a List of recommended experiences based on the [User]'s interests
  Stream<Either<Failure, KtList<Experience>>> watchRecommendedExperiences();
}
