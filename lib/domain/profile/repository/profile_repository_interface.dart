import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the [User]'s profile feature.
abstract class ProfileRepositoryInterface {
  /// Gets the [User] associated with the given id
  Future<Either<Failure, User>> loadUser(int id);

  /// Sends a edited [User] to the server to be saved on the database
  Future<Either<Failure, Unit>> editUser(User user);

  /// Sends the id of a [User] the logged in [User] wants to block
  Future<Either<Failure, Unit>> blockUser(int blockedId);

  /// Sends the id of a [User] the logged in [User] wants to un-block
  Future<Either<Failure, Unit>> unBlockUser(int blockedId);

  /// Sends the id of an [Experience] to the server so this one can be removed from the liked [Experience]s list of the logged in [User]
  Future<Either<Failure, Unit>> removeExperienceLiked(int experienceId);

  /// Sends the id of an [Experience] to the server so this one can be deleted
  Future<Either<Failure, Unit>> deleteExperience(int experienceId);

  /// Sends the id of a [User] the logged in [User] wants to follow
  Future<Either<Failure, Unit>> followUser(int userToFollowId);

  /// Sends the id of a [User] the logged in [User] wants to un-follow
  Future<Either<Failure, Unit>> unFollowUser(int userToUnFollowId);

  // Speaking about the following methods
  // TODO: Maybe a different set of methods will be needed for when the user checks its own profile, same with Flutter pages and BLoCs
  // Basically separate them into two features

  /// Sends an [User]'s id to the server so it returns a [KtSet] of the [User]s it follows
  Stream<Either<Failure, KtSet<User>>> loadFollowedUsers(int id);

  /// Sends an [User]'s id to the server so it returns a [KtSet] of the [User]s following it
  Stream<Either<Failure, KtSet<User>>> loadFollowingUsers(int id);

  /// Sends an [User]'s id to the server so it returns a [KtSet] of the [User]s it has blocked
  Stream<Either<Failure, KtSet<User>>> loadBlockedUsers(int id);

  /// Sends an [User]'s id to the server so it returns a [KtSet] of the [Experience]s it has done
  Stream<Either<Failure, KtSet<Experience>>> loadExperiencesDone(int id);

  /// Sends an [User]'s id to the server so it returns a [KtSet] of the [Experience]s it has liked
  Stream<Either<Failure, KtSet<Experience>>> loadExperiencesLiked(int id);

  /// Sends an [User]'s id to the server so it returns a [KtSet] of the [Experience]s it has created
  Stream<Either<Failure, KtSet<Experience>>> loadExperiencesCreated(int id);

  /// Returns a [KtSet] of [Tag]s of a given [User] interests
  Stream<Either<Failure, KtSet<Tag>>> loadUserInterests(int userId);

  /// Returns a [KtSet] of the [Achievement]s accomplished by a [User]
  Stream<Either<Failure, KtSet<Achievement>>> loadUserAchievements(int userId);

// TODO: implement Message user
}
