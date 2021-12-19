import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class CreateExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  CreateExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async =>
      _repository.createExperience(params.experience);
}

class Params {
  final Experience experience;

  Params({
    required this.experience,
  });
}
