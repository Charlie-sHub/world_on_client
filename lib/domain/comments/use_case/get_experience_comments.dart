import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetExperienceComments implements AsyncUseCase<Set<Comment>, Params> {
  final CommentRepository repository;

  GetExperienceComments(this.repository);

  @override
  Future<Either<Failure, Set<Comment>>> call(Params params) async {
    return repository.getExperienceComments(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({this.experienceId});
}
