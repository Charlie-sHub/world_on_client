import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class DislikeExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  DislikeExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.dislikeExperience(params.experienceId);
  }
}

class Params {
  final UniqueId experienceId;

  Params({required this.experienceId});
}
