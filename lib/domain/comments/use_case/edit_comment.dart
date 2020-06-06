import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

class EditComment implements AsyncUseCase<Unit, Params> {
  final CommentRepositoryInterface _repository;

  const EditComment(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.poster || params.userRequesting.adminPowers;
    if (isAuthorized) {
      final comment = Comment(
        id: params.id,
        poster: params.poster,
        content: params.content,
        creationDate: params.creationDate,
        modificationDate: PastDate(DateTime.now()),
      );
      return _repository.editComment(comment);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final int id;
  final User poster;
  final CommentContent content;
  final PastDate creationDate;

  Params({
    @required this.userRequesting,
    @required this.id,
    @required this.poster,
    @required this.content,
    @required this.creationDate,
  });
}
