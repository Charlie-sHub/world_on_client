import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class EditUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface repository;
  
  EditUser(this.repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting.id == params.userToEdit.id || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return repository.editUser(params.userToEdit);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userRequesting;
  final User userToEdit;

  Params({
    @required this.userRequesting,
    @required this.userToEdit,
  });
}
