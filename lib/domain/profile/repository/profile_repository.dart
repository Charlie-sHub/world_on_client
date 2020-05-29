import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the [User]'s profile feature.
abstract class ProfileRepository {
  /// Gets the [User] associated with the given id
  Future<Either<Failure, User>> loadUser(int id);

  /// Sends a edited [User] to the server to be saved on the database
  Future<Either<Failure, Unit>> editUser(User user);

  /// Sends an [User]'s id to the server so it returns a [Set] of the [User]s it follows
  Future<Either<Failure, Set<User>>> loadFollowedUsers(int id);

  /// Sends an [User]'s id to the server so it returns a [Set] of the [User]s following it
  Future<Either<Failure, Set<User>>> loadFollowingUsers(int id);

  /// Sends an [User]'s id to the server so it returns a [Set] of the [User]s it has blocked
  Future<Either<Failure, Set<User>>> loadBlockedUsers(int id);

  /// Sends an [User]'s id to the server so it returns a [Set] of the [Experience]s it has done
  Future<Either<Failure, Set<Experience>>> loadExperiencesDone(int id);

  /// Sends an [User]'s id to the server so it returns a [Set] of the [Experience]s it has liked
  Future<Either<Failure, Set<Experience>>> loadExperiencesLiked(int id);

  /// Sends an [User]'s id to the server so it returns a [Set] of the [Experience]s it has created
  Future<Either<Failure, Set<Experience>>> loadExperiencesCreated(int id);

  /// Sends a couple of [User] ids so the blocked [User] is added to the list of blocked [User]s of a given [User]
  Future<Either<Failure, Unit>> blockUser({int blockerId, int blockedId});

  /// Sends a couple of [User] ids so the blocked [User] is removed from the list of blocked [User]s of a given [User]
  Future<Either<Failure, Unit>> unBlockUser({int blockerId, int blockedId});

  /// Sends the id of an [Experience] to the server so this one can be removed from the liked [Experience]s list of a given [User]
  Future<Either<Failure, Unit>> removeExperienceLiked({int userId, int experienceId});

  /// Sends the id of an [Experience] to the server so this one can be deleted
  Future<Either<Failure, Unit>> deleteExperience(int experienceId);

  /// Sends a couple of [User] ids so the followed [User] is added to the list of following [User]s of a given [User]
  Future<Either<Failure, Unit>> followUser({int userId, int userToFollowId});

  /// Sends a couple of [User] ids so the followed [User] is removed from the list of following [User]s of a given [User]
  Future<Either<Failure, Unit>> unFollowUser({int userId, int userToUnFollowId});

  /// Returns a [Set] of [Tag]s of a given [User] interests
  Future<Either<Failure, Set<Tag>>> loadUserInterests(int userId);

  /// Returns a [Set] of the [Achievement]s accomplished by a [User]
  Future<Either<Failure, Set<Achievement>>> loadUserAchievements(int userId);

// TODO: implement Message user
}
