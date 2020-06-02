import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class EditComment implements AsyncUseCase<Unit, Params> {
  final CommentRepository _repository;

  const EditComment(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.editComment(params.comment);
  }
}

class Params {
  final Comment comment;

  Params({@required this.comment});
}
