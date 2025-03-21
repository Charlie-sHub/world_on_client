import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class RateDifficulty implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  RateDifficulty(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.rateDifficulty(
      difficulty: params.difficulty,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final Difficulty difficulty;
  final UniqueId experienceId;

  Params({
    required this.difficulty,
    required this.experienceId,
  });
}
