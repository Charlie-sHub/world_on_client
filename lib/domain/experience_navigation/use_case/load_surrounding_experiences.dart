import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class LoadSurroundingExperiences implements AsyncUseCase<Set<Experience>, Params> {
  final ExperienceNavigationRepositoryInterface _repository;
  
  LoadSurroundingExperiences(this._repository);
  
  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.loadSurroundingExperiences(params.coordinates);
  }
}

class Params {
  final Coordinates coordinates;

  Params({
    @required this.coordinates,
  });
}
