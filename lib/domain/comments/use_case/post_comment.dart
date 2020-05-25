import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class PostComment implements AsyncUseCase<Unit, Params> {
  final CommentRepository repository;

  PostComment(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.postComment(
      comment: params.comment,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final Comment comment;
  final int experienceId;

  Params({@required this.comment, @required this.experienceId});
}
