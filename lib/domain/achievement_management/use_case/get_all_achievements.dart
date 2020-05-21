import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetAllAchievements implements AsyncUseCase<List<Achievement>, NoParams> {
  final AchievementRepository repository;

  GetAllAchievements(this.repository);

  @override
  Future<Either<Failure, List<Achievement>>> call(NoParams params) {
    return repository.getAllAchievement();
  }
}
