import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetExperience implements AsyncUseCase<Experience, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  GetExperience(this._repository);

  @override
  Future<Either<Failure, Experience>> call(Params params) async {
    return _repository.getExperience(params.id);
  }
}

class Params {
  final UniqueId id;

  Params({required this.id});
}
