import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository.dart';

class GetExperience implements AsyncUseCase<Experience, Params> {
  final ExperienceManagementRepository repository;

  GetExperience(this.repository);

  @override
  Future<Either<Failure, Experience>> call(Params params) async {
    return repository.getExperience(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
