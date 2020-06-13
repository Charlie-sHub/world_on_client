import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

class LoadSurroundingExperiences implements AsyncUseCase<Set<Experience>, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  LoadSurroundingExperiences(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.loadSurroundingExperiences(
      longitude: params.longitude,
      latitude: params.latitude,
    );
  }
}

class Params {
  final double latitude;
  final double longitude;

  Params({
    @required this.latitude,
    @required this.longitude,
  });
}
