import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository.dart';

class RemoveExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepository _repository;

  const RemoveExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.removeExperience(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
