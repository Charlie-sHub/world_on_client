import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class CreateAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;

  CreateAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.createAchievement(params.achievement);
  }
}

class Params {
  final Achievement achievement;

  Params({
    @required this.achievement,
  });
}
