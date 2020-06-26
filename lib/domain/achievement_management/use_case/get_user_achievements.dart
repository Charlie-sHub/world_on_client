import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetUserAchievements implements StreamUseCase<Set<Achievement>, NoParams> {
  final AchievementRepositoryInterface _repository;

  GetUserAchievements(this._repository);

  @override
  Stream<Either<Failure, Set<Achievement>>> call(NoParams params) async* {
    yield* _repository.getUserAchievements();
  }
}
