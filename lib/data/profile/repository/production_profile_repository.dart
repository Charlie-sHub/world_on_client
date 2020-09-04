import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.prod])
class ProductionProfileRepository implements ProfileRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> blockUser(int blockedId) {
    // TODO: implement blockUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(int experienceId) {
    // TODO: implement deleteExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editUser(User user) {
    // TODO: implement editUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> followUser(int userToUnFollowId) {
    // TODO: implement followUser
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(int id) {
    // TODO: implement loadBlockedUsers
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(int id) {
    // TODO: implement loadExperiencesCreated
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(int id) {
    // TODO: implement loadExperiencesDone
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(int id) {
    // TODO: implement loadExperiencesLiked
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(int id) {
    // TODO: implement loadFollowedUsers
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(int id) {
    // TODO: implement loadFollowingUsers
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getUser(int id) {
    // TODO: implement loadUser
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(int userId) {
    // TODO: implement loadUserAchievements
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(int userId) {
    // TODO: implement loadUserInterests
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(int experienceId) {
    // TODO: implement removeExperienceLiked
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> unBlockUser(int blockedId) {
    // TODO: implement unBlockUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> unFollowUser(int userToUnFollowId) {
    // TODO: implement unFollowUser
    throw UnimplementedError();
  }
}
