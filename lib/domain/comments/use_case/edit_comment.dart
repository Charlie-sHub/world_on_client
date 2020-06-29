import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@lazySingleton
class EditComment implements AsyncUseCase<Unit, Params> {
  final CommentRepositoryInterface _repository;
  
  EditComment(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.comment.poster || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.editComment(params.comment);
    } else {
      return left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()));
    }
  }
}

class Params {
  final User userRequesting;
  final Comment comment;

  Params({
    @required this.userRequesting,
    @required this.comment,
  });
}
