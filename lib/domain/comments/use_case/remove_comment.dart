import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class RemoveComment implements AsyncUseCase<Unit, Params> {
  final CommentRepository repository;

  RemoveComment(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.removeComment(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
