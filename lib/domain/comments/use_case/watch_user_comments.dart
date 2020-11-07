import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchUserComments implements StreamUseCase<KtSet<Comment>, Params> {
  final CommentRepositoryInterface _repository;

  WatchUserComments(this._repository);

  @override
  Stream<Either<Failure, KtSet<Comment>>> call(Params params) async* {
    yield* _repository.watchUserComments(params.userId);
  }
}

class Params {
  final UniqueId userId;

  Params({@required this.userId});
}
