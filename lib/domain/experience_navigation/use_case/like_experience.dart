import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

class LikeExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  const LikeExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.likeExperience(
      experienceId: params.experienceId,
      userId: params.userId,
    );
  }
}

class Params {
  final int userId;
  final int experienceId;

  Params({@required this.userId, @required this.experienceId});
}
