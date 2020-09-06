import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';

@LazySingleton(as: CommentRepositoryInterface, env: [Environment.prod])
class ProductionCommentRepository implements CommentRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> editComment(Comment comment) {
    // TODO: implement editComment
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Comment>>> watchExperienceComments(int experienceId) {
    // TODO: implement getExperienceComments
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(int userId) {
    // TODO: implement getUserComments
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> postComment(Comment comment) {
    // TODO: implement postComment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeComment(int id) {
    // TODO: implement removeComment
    throw UnimplementedError();
  }
}
