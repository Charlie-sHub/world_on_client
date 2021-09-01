import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

@LazySingleton(as: AchievementRepositoryInterface, env: [Environment.dev])
class DevelopmentAchievementRepository implements AchievementRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> awardAchievement({
    required UniqueId achievementId,
    required UniqueId userId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> createAchievement(Achievement achievement) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editAchievement(Achievement achievement) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Achievement>> getAchievement(UniqueId achievementId) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> watchAllAchievements() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeAchievement(UniqueId achievementId) {
    throw UnimplementedError();
  }
}
