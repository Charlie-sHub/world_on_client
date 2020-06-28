import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class PostComment implements AsyncUseCase<Unit, Params> {
  final CommentRepositoryInterface _repository;

  PostComment(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.postComment(
      comment: params.comment,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int experienceId;
  final Comment comment;

  Params({
    @required this.experienceId,
    @required this.comment,
  });
}
