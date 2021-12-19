import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class DismissExperienceFromLog implements AsyncUseCase<Unit, Params> {
  final ExperienceLogRepositoryInterface _repository;

  DismissExperienceFromLog(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async =>
      _repository.dismissExperienceFromLog(params.experienceId);
}

class Params {
  final UniqueId experienceId;

  Params({required this.experienceId});
}
