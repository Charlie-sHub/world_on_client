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

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.prod])
class ProductionProfileRepository implements ProfileRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId) {
    // TODO: implement blockUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) {
    // TODO: implement deleteExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editUser(User user) {
    // TODO: implement editUser
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, Unit>> followUser(UniqueId userToUnFollowId) {
    // TODO: implement followUser
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(UniqueId id) {
    // TODO: implement loadBlockedUsers
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id) {
    // TODO: implement loadExperiencesCreated
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id) {
    // TODO: implement loadExperiencesDone
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id) {
    // TODO: implement loadExperiencesLiked
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id) {
    // TODO: implement loadFollowedUsers
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(UniqueId id) {
    // TODO: implement loadFollowingUsers
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, User>> getUser(UniqueId id) {
    // TODO: implement loadUser
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId userId) {
    // TODO: implement loadUserAchievements
    throw UnimplementedError();
  }
  
  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(UniqueId userId) {
    // TODO: implement loadUserInterests
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(UniqueId experienceId) {
    // TODO: implement removeExperienceLiked
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, Unit>> unBlockUser(UniqueId blockedId) {
    // TODO: implement unBlockUser
    throw UnimplementedError();
  }
  
  @override
  Future<Either<Failure, Unit>> unFollowUser(UniqueId userToUnFollowId) {
    // TODO: implement unFollowUser
    throw UnimplementedError();
  }
}
