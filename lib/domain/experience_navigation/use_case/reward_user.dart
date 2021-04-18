import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class RewardUser implements AsyncUseCase<Map, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  RewardUser(this._repository);

  @override
  Future<Either<Failure, Map>> call(Params params) async {
    // Maybe that 10 should be defined somewhere else, in case it needs to be reused
    final _experiencePoints = params.experience.difficulty.getOrCrash() * 10;
    return _repository.rewardUser(_experiencePoints);
  }
}

class Params {
  final Experience experience;

  Params({required this.experience});
}
