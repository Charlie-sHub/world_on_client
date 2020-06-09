import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

class PostComment implements AsyncUseCase<Unit, Params> {
  final CommentRepositoryInterface _repository;

  PostComment(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final comment = Comment(
      id: null,
      poster: params.user,
      content: params.content,
      creationDate: PastDate(DateTime.now()),
      modificationDate: PastDate(DateTime.now()),
    );
    return _repository.postComment(
      comment: comment,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int experienceId;
  final User user;
  final CommentContent content;

  Params({
    @required this.experienceId,
    @required this.user,
    @required this.content,
  });
}
