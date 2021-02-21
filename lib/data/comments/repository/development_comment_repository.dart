import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

@LazySingleton(as: CommentRepositoryInterface, env: [Environment.dev])
class DevelopmentCommentRepository implements CommentRepositoryInterface {
  @override
  Stream<Either<Failure, KtList<Comment>>> watchExperienceComments(UniqueId experienceId) async* {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> postComment(Comment comment) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editComment(Comment comment) {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(UniqueId userId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeComment(UniqueId id) {
    throw UnimplementedError();
  }
}
