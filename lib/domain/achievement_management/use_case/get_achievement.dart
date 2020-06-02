import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetAchievement implements AsyncUseCase<Achievement, Params> {
  final AchievementRepository _repository;

  const GetAchievement(this._repository);

  @override
  Future<Either<Failure, Achievement>> call(Params params) async {
    return _repository.getAchievement(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
