import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

/// Sends the id of a [Experience] to the server so the [Experience] is added to the logged in [User]'s list of done [Experience]s
@lazySingleton
class FinishExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  FinishExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.finishExperience(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
