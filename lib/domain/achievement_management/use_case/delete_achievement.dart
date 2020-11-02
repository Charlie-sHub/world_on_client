import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class DeleteAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;

  DeleteAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final _userRequestingOption = await getIt<GetLoggedInUser>().call(getIt<NoParams>());
    final _userRequesting = _userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final _isAuthorized = _userRequesting.id == params.achievement.creatorId || _userRequesting.adminPowers;
    if (_isAuthorized) {
      return _repository.removeAchievement(params.achievement.id);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final Achievement achievement;

  Params({
    @required this.achievement,
  });
}
