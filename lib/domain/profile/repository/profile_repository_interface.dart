import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Repository for the [User]'s profile feature.
abstract class ProfileRepositoryInterface {
  /// Gets the [User] associated with the given id
  Future<Either<Failure, User>> getUser(UniqueId id);

  /// Gets the amount of [User]s that follow a given [User]
  Future<Either<Failure, int>> getAmountOfFollowers(UniqueId id);

  /// Sends a edited [User] to the server to be saved on the database
  Future<Either<Failure, Unit>> editUser(User user);

  /// Sends the id of a [User] the logged in [User] wants to block
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId);

  /// Sends the id of a [User] the logged in [User] wants to un-block
  Future<Either<Failure, Unit>> unBlockUser(UniqueId blockedId);

  /// Sends the id of a [User] the logged in [User] wants to follow
  Future<Either<Failure, Unit>> followUser(UniqueId userToFollowId);

  /// Sends the id of a [User] the logged in [User] wants to un-follow
  Future<Either<Failure, Unit>> unFollowUser(UniqueId userToUnFollowId);

  /// Sends the id of an [Experience] to the server so this one can be removed from the liked [Experience]s list of the logged in [User]
  Future<Either<Failure, Unit>> removeExperienceLiked(UniqueId experienceId);

  /// Sends the id of an [Experience] to the server so this one can be deleted
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId);

  /// Sends an [User]'s id to the server so it returns a [KtList] of the [User]s it follows
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id);

  /// Sends an [User]'s id to the server so it returns a [KtList] of the [User]s following it
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(UniqueId id);

  /// Sends an [User]'s id to the server so it returns a [KtList] of the [User]s it has blocked
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(UniqueId id);

  /// Sends an [User]'s id to the server so it returns a [KtList] of the [Experience]s it has done
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id);

  /// Sends an [User]'s id to the server so it returns a [KtList] of the [Experience]s it has liked
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id);

  /// Sends an [User]'s id to the server so it returns a [KtList] of the [Experience]s it has created
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id);

  /// Returns a [KtList] of [Tag]s of a given [User] interests
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(UniqueId userId);

  /// Returns a [KtList] of the [Achievement]s accomplished by a [User]
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId userId);

  /// Watches updates to the [User]'s document with the given [UniqueId]
  Stream<Either<Failure, User>> watchProfile(UniqueId userId);
}
