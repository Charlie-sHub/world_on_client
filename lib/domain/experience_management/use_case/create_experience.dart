import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class CreateExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;
  
  CreateExperience(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.createExperience(params.experience);
  }
}

class Params {
  final Experience experience;

  // TODO: Determine how to create Objectives
  // Objectives could be created with use-cases like the other entities, but it doesn't make much sense to have a use-case only construct and object and return it
  // at the same time i don't like the idea of creating the Objective objects in the BLoC as it kinda defeats the purpose of the use-cases, at the very least it'd
  // weird to leave the Objectives as the only entities to be instantiated that way. Leaning more on the use-case even if just to keep things similar and following
  // the architecture as closely as possible.
  //
  // Should check Reso Coder's method for the todos in the DDD tutorial, most likely we can do the same

  Params({
    @required this.experience,
  });
}
