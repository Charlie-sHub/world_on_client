import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(
  as: ProfileRepositoryInterface,
  env: Environment.prod,
)
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
    // TODO:    implement editUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> followUser(int userToUnFollowId) {
    // TODO: implement followUser
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> loadBlockedUsers(int id) {
    // TODO:    implement loadBlockedUsers
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> loadExperiencesCreated(int id) {
    // TODO:    implement loadExperiencesCreated
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> loadExperiencesDone(int id) {
    // TODO:    implement loadExperiencesDone
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> loadExperiencesLiked(int id) {
    // TODO:    implement loadExperiencesLiked
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> loadFollowedUsers(int id) {
    // TODO:    implement loadFollowedUsers
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> loadFollowingUsers(int id) {
    // TODO:    implement loadFollowingUsers
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> loadUser(int id) {
    // TODO:    implement loadUser
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Achievement>>> loadUserAchievements(int userId) {
    // TODO:    implement loadUserAchievements
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Tag>>> loadUserInterests(int userId) {
    // TODO:    implement loadUserInterests
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
