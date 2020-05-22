import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetUserAchievements implements AsyncUseCase<Set<Achievement>, Params> {
  final AchievementRepository repository;

  GetUserAchievements(this.repository);

  @override
  Future<Either<Failure, Set<Achievement>>> call(Params params) async {
    return repository.getUserAchievements(params.userId);
  }
}

class Params {
  final int userId;

  Params({this.userId});
}
