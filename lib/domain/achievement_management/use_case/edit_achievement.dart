import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.prod)
class EditAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;
  
  EditAchievement(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.achievement.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.editAchievement(params.achievement);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userRequesting;
  final Achievement achievement;

  Params({
    @required this.userRequesting,
    @required this.achievement,
  });
}
