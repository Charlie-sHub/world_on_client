import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

class DeleteUser implements AsyncUseCase<Unit, Params> {
  final RemoteOptionsRepositoryInterface _repository;

  DeleteUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting.adminPowers || params.userRequesting.id == params.userToDelete.id;
    if (isAuthorized) {
      return _repository.deleteUser(params.userToDelete.id);
    } else {
      return left(const CoreDomainFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final User userToDelete;

  Params({
    @required this.userRequesting,
    @required this.userToDelete,
  });
}
