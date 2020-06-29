import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@lazySingleton
class RewardUser implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepositoryInterface _repository;
  
  RewardUser(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.rewardUser(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
