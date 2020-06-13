import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class AwardAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;

  AwardAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) {
    // TODO: how to keep track and award the Achievements?
    // Right now this use case can't determine when an Achievement should be awarded
    // Will have to come up with something in the future
    return _repository.awardAchievement(
      achievementId: params.achievementId,
      userId: params.userId,
    );
  }
}

class Params {
  final int userId;
  final int achievementId;

  Params({
    @required this.userId,
    @required this.achievementId,
  });
}
