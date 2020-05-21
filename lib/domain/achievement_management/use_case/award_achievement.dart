import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class AwardAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepository repository;

  AwardAchievement(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) {
    return repository.awardAchievement(
      achievementId: params.achievementId,
      userId: params.userId,
    );
  }
}

class Params {
  final int userId;
  final int achievementId;

  Params({this.userId, this.achievementId});
}
