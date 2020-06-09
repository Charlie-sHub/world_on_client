import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

class RewardUser implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  RewardUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.rewardUser(
      userId: params.userId,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int userId;
  final int experienceId;

  Params({@required this.userId, @required this.experienceId});
}
