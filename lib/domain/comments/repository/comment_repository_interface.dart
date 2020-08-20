import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the management of [Comment]s
abstract class CommentRepositoryInterface {
  /// Sends a [Comment] to the server to the associated to the [Experience] with the given id
  Future<Either<Failure, Unit>> postComment({
    @required Comment comment,
    @required int experienceId,
  });

  /// Sends an id to the server to it removes the [Comment] associated with it
  Future<Either<Failure, Unit>> removeComment(int id);

  /// Sends a modified [Comment] to the server so the changes are saved
  Future<Either<Failure, Unit>> editComment(Comment comment);

  /// Gets the [Comment]s of an [Experience]
  Stream<Either<Failure, KtList<Comment>>> watchExperienceComments(int experienceId);

  /// Gets the [Comment]s of a given [User]
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(int userId);
}
