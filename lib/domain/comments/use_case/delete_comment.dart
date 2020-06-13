import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class DeleteComment implements AsyncUseCase<Unit, Params> {
  final CommentRepositoryInterface _repository;

  DeleteComment(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.comment.poster || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.removeComment(params.comment.id);
    } else {
      return left(const CoreDomainFailure.unAuthorizedError());
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
