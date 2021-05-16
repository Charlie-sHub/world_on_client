import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.dev])
class DevelopmentProfileRepository implements ProfileRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> editUser(User user) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getUser(UniqueId id) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> unBlockUser(UniqueId blockedId) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> followUser(UniqueId userToFollowId) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> unFollowUser(UniqueId userToUnFollowId) async {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(UniqueId id) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId userId) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(UniqueId userId) async* {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(UniqueId experienceId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(UniqueId id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, int>> getAmountOfFollowers(UniqueId id) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, User>> watchProfile(UniqueId userId) {
    throw UnimplementedError();
  }
}
