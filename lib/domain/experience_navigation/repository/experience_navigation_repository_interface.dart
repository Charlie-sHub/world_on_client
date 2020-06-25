import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// Repository for the  experience navigation feature
///
/// It has the methods that correspond to the [AsyncUseCase] that require server connection
abstract class ExperienceNavigationRepositoryInterface {
  /// Sends the difficulty as rated by an [User] to the server to it updates the [Experience]'s difficulty value
  Future<Either<Failure, Unit>> rateDifficulty({
    @required int difficulty,
    @required int experienceId,
  });

  /// Sends the IDs of an [Experience] so the server rewards the logged in [User] with the corresponding experience points
  Future<Either<Failure, Unit>> rewardUser(int experienceId);

  /// Sends the IDs of an [Experience] so the server adds the [Experience] to the logged in [User]'s liked list
  Future<Either<Failure, Unit>> likeExperience(int experienceId);

  /// Sends the IDs of an [Experience] so the server adds the [Experience] to the logged in [User]'s done list
  Future<Either<Failure, Unit>> finishExperience(int experienceId);

  /// Sends a pair of latitude and longitude values and returns a [Set] of [Experience]s located within a certain radius
  Future<Either<Failure, Set<Experience>>> loadSurroundingExperiences({
    @required double latitude,
    @required double longitude,
  });
}
