import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.prod])
class ProductionExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> finishExperience(int experienceId) {
    // TODO: implement finishExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> likeExperience(int experienceId) {
    // TODO: implement likeExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    // TODO: implement loadSurroundingExperiences
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> rateDifficulty({
    Difficulty difficulty,
    int experienceId,
  }) {
    // TODO: implement rateDifficulty
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> rewardUser(int experienceId) {
    // TODO: implement rewardUser
    throw UnimplementedError();
  }
}
