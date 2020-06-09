import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class DeleteAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;

  DeleteAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.achievement.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.removeAchievement(params.achievement.id);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final Achievement achievement;

  Params({@required this.userRequesting, @required this.achievement});
}
