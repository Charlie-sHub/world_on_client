import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> finishExperience(UniqueId experienceId) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> likeExperience(UniqueId experienceId) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> dislikeExperience(UniqueId experienceId) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> rateDifficulty({
    required Difficulty difficulty,
    required UniqueId experienceId,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> rewardUser(
    int experiencePoints,
    int userLevel,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchRecommendedExperiences() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> accomplishObjective(Objective objective, UniqueId experienceId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ObjectiveList>> saveUserProgress(ObjectiveList objectiveList, UniqueId experienceId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> unAccomplishObjective(Objective objective, UniqueId experienceId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceBoostItem(Item item) {
    throw UnimplementedError();
  }
}
