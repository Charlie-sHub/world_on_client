import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

class GetExperience implements AsyncUseCase<Experience, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  GetExperience(this._repository);

  @override
  Future<Either<Failure, Experience>> call(Params params) async {
    return _repository.getExperience(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
