import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Repository for the management of [Comment]s
abstract class CommentRepositoryInterface {
  /// Sends a [Comment] to the server to be saved
  Future<Either<Failure, Unit>> postComment(Comment comment);

  /// Sends an id to the server to it removes the [Comment] associated with it
  Future<Either<Failure, Unit>> removeComment(UniqueId id);

  /// Sends a modified [Comment] to the server so the changes are saved
  Future<Either<Failure, Unit>> editComment(Comment comment);

  /// Gets the [Comment]s of an [Experience]
  Stream<Either<Failure, KtList<Comment>>> watchExperienceComments(UniqueId experienceId);

  /// Gets the [Comment]s of a given [User]
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(UniqueId userId);
}
