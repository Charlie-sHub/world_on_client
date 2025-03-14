import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class PostComment implements AsyncUseCase<Unit, Params> {
  final CommentRepositoryInterface _repository;

  PostComment(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.postComment(params.comment);
  }
}

class Params {
  final Comment comment;

  Params({
    required this.comment,
  });
}
