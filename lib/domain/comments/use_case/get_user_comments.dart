import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetUserComments implements AsyncUseCase<Set<Comment>, Params> {
  final CommentRepository _repository;

  const GetUserComments(this._repository);

  @override
  Future<Either<Failure, Set<Comment>>> call(Params params) async {
    return _repository.getUserComments(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
