import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/comment.dart';

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
  Future<Either<Failure, Set<Comment>>> getExperienceComments(int experienceId);

  /// Gets the [Comment]s of an [User]
  Future<Either<Failure, Set<Comment>>> getUserComments(int userId);
}
