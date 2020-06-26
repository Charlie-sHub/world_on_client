import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the management of [Achievement]s.
abstract class AchievementRepositoryInterface {
  /// Sends the given [Achievement] To the server to be saved.
  Future<Either<Failure, Unit>> createAchievement(Achievement achievement);

  /// Sends the given modified [Achievement] to the server for the changes to be saved.
  Future<Either<Failure, Unit>> editAchievement(Achievement achievement);

  /// Sends a given an [Achievement]'s id to the server so it returns the wanted [Achievement].
  Future<Either<Failure, Achievement>> getAchievement(int id);

  /// Sends a given id to the server so it deletes the [Achievement] associated with it.
  Future<Either<Failure, Unit>> removeAchievement(int id);

  /// Awards the [Achievement] associated with the given id to the [User] associated with the given user id.
  // Is this really necessary? probably
  Future<Either<Failure, Unit>> awardAchievement({
    @required int achievementId,
    @required int userId,
  });

  /// Gets all the [Achievement]s of the logged in [User]
  Stream<Either<Failure, Set<Achievement>>> getUserAchievements();

  /// Gets all the [Achievement]s in the database.
  // TODO: Make it so only a few Achievements are gotten each time it's called, same with other getAll methods
  // Maybe using Streams and Firebase will solve that issue
  // Getting all the achievements at once is not scalable, though it's not that bad in comparison with getting all Experiences for example, but still
  Stream<Either<Failure, List<Achievement>>> getAllAchievement();
}
