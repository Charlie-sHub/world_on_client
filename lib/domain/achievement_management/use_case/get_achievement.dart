import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetAchievement implements AsyncUseCase<Achievement, Params> {
  final AchievementRepositoryInterface _repository;

  GetAchievement(this._repository);

  @override
  Future<Either<Failure, Achievement>> call(Params params) async =>
      _repository.getAchievement(params.id);
}

class Params {
  final UniqueId id;

  Params({required this.id});
}
