import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetExperienceComments implements StreamUseCase<Set<Comment>, Params> {
  final CommentRepositoryInterface _repository;

  GetExperienceComments(this._repository);

  @override
  Stream<Either<Failure, Set<Comment>>> call(Params params) async* {
    yield* _repository.getExperienceComments(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
