import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository.dart';

class RateDifficulty implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepository repository;

  RateDifficulty(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.rateDifficulty(
      difficulty: params.difficulty,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int difficulty;
  final int experienceId;

  Params({this.difficulty, this.experienceId});
}
