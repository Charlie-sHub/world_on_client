import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchExperienceComments implements StreamUseCase<KtList<Comment>, Params> {
  final CommentRepositoryInterface _repository;

  WatchExperienceComments(this._repository);

  @override
  Stream<Either<Failure, KtList<Comment>>> call(Params params) async* {
    yield* _repository.watchExperienceComments(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
