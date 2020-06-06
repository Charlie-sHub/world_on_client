import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetExperienceComments implements AsyncUseCase<Set<Comment>, Params> {
  final CommentRepositoryInterface _repository;

  const GetExperienceComments(this._repository);

  @override
  Future<Either<Failure, Set<Comment>>> call(Params params) async {
    return _repository.getExperienceComments(params.experienceId);
  }
}

class Params {
  final int experienceId;

  Params({@required this.experienceId});
}
