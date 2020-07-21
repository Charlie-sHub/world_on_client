import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';

@LazySingleton(
  as: CommentRepositoryInterface,
  env: [Environment.dev],
)
class DevelopmentCommentRepository implements CommentRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> editComment(Comment comment) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> getExperienceComments(int experienceId) {
    Either<Failure, KtSet<Comment>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidComment(),
        getValidComment().copyWith(
          id: 2,
          content: CommentContent("Phasellus elementum mollis ipsum non auctor."),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> getUserComments(int userId) {
    Either<Failure, KtSet<Comment>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidComment(),
        getValidComment().copyWith(
          id: 2,
          content: CommentContent("Phasellus elementum mollis ipsum non auctor."),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, Unit>> postComment({
    Comment comment,
    int experienceId,
  }) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> removeComment(int id) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
