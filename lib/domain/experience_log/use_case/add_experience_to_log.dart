import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

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
