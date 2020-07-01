import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class EditTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepositoryInterface _repository;
  
  EditTag(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.tag.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.editTag(params.tag);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userRequesting;
  final Tag tag;

  Params({
    @required this.userRequesting,
    @required this.tag,
  });
}
