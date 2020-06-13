import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

class EditTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepositoryInterface _repository;

  EditTag(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      final tag = Tag(
        id: params.id,
        name: params.name,
        creator: params.creator,
        creationDate: params.creationDate,
        modificationDate: PastDate(DateTime.now()),
      );
      return _repository.editTag(tag);
    } else {
      return left(const CoreDomainFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final int id;
  final Name name;
  final User creator;
  final PastDate creationDate;

  Params({
    @required this.userRequesting,
    @required this.id,
    @required this.name,
    @required this.creator,
    @required this.creationDate,
  });
}
