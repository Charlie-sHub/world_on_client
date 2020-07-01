import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.prod)
class GetUserComments implements StreamUseCase<Set<Comment>, Params> {
  final CommentRepositoryInterface _repository;
  
  GetUserComments(this._repository);
  
  @override
  Stream<Either<Failure, Set<Comment>>> call(Params params) async* {
    yield* _repository.getUserComments(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
