import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@lazySingleton
class DeleteExperience implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;
  
  DeleteExperience(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.experience.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.deleteExperience(params.experience.id);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userRequesting;
  final Experience experience;

  Params({
    @required this.userRequesting,
    @required this.experience,
  });
}
