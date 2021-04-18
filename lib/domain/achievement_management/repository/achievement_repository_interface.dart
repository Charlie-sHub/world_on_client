import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Repository for the management of [Achievement]s.
abstract class AchievementRepositoryInterface {
  /// Sends the given [Achievement] To the server to be saved.
  Future<Either<Failure, Unit>> createAchievement(Achievement achievement);

  /// Sends the given modified [Achievement] to the server for the changes to be saved.
  Future<Either<Failure, Unit>> editAchievement(Achievement achievement);

  /// Sends a given an [Achievement]'s id to the server so it returns the wanted [Achievement].
  Future<Either<Failure, Achievement>> getAchievement(UniqueId id);

  /// Sends a given id to the server so it deletes the [Achievement] associated with it.
  Future<Either<Failure, Unit>> removeAchievement(UniqueId id);

  /// Awards the [Achievement] associated with the given id to the [User] associated with the given user id.
  // Is this really necessary? probably
  Future<Either<Failure, Unit>> awardAchievement({
    required UniqueId achievementId,
    required UniqueId userId,
  });

  /// Gets all the [Achievement]s in the database.
  Stream<Either<Failure, KtList<Achievement>>> watchAllAchievements();
}
