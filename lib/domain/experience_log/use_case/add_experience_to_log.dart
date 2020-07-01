import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

// This use case should maybe be moved to core as it will likely be used in a few different blocs
@LazySingleton(env: Environment.prod)
class AddExperienceToLog implements AsyncUseCase<Unit, Params> {
  final ExperienceLogRepositoryInterface _repository;

  AddExperienceToLog(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.addExperienceToLog(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
