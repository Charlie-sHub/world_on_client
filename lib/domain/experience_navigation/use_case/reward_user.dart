import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository.dart';

class RewardUser implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepository repository;

  const RewardUser(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.rewardUser(
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
