import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

import '../../../injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class DeleteUser implements AsyncUseCase<Unit, Params> {
  final RemoteOptionsRepositoryInterface _repository;

  DeleteUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final _userRequestingOption = await getIt<GetLoggedInUser>().call(getIt<NoParams>());
    final _userRequesting = _userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final isAuthorized = _userRequesting.adminPowers || _userRequesting == params.userToDelete;
    if (isAuthorized) {
      return _repository.deleteUser(params.userToDelete.id);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userToDelete;

  Params({
    @required this.userToDelete,
  });
}
