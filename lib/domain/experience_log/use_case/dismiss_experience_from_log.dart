import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class DismissExperienceFromLog implements AsyncUseCase<Unit, Params> {
  final ExperienceLogRepositoryInterface _repository;
  
  DismissExperienceFromLog(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.dismissExperienceFromLog(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
