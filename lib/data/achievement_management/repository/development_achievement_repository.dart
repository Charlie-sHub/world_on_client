import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';

@LazySingleton(
  as: AchievementRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentAchievementRepository implements AchievementRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> awardAchievement({
    int achievementId,
    int userId,
  }) {
    // TODO: implement awardAchievement
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> createAchievement(Achievement achievement) {
    // TODO: implement createAchievement
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editAchievement(Achievement achievement) {
    // TODO: implement editAchievement
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Achievement>> getAchievement(int ac) {
    // TODO: implement getAchievement
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<Achievement>>> getAllAchievement() {
    // TODO: implement getAllAchievement
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Achievement>>> getUserAchievements() {
    // TODO: implement getUserAchievements
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeAchievement(int ac) {
    // TODO: implement removeAchievement
    throw UnimplementedError();
  }
}
