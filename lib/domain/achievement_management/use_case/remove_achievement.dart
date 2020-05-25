import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class RemoveAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepository repository;

  RemoveAchievement(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.removeAchievement(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
