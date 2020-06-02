import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository.dart';

class CreateExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepository _repository;

  const CreateExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.createExperience(params.experience);
  }
}

class Params {
  final Experience experience;

  Params({@required this.experience});
}
