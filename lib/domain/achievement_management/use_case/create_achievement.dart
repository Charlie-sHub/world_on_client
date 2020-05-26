import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class CreateAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepository repository;

  const CreateAchievement(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.createAchievement(params.achievement);
  }
}

class Params {
  final Achievement achievement;

  Params({@required this.achievement});
}
