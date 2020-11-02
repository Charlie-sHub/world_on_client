import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Abstract class of the [Tag] repository
abstract class TagCoreRepositoryInterface {
  /// Returns all [Tag]s
  Stream<Either<Failure, KtList<Tag>>> watchAllTags();

  /// Gets all the [Tag]s created by a given [User]'s id
  Stream<Either<Failure, KtList<Tag>>> watchTagsByCreator(int creatorId);

  /// Gets the [User] that created a given [Tag]
  Future<Either<Failure, User>> getCreator(int id);

  /// Adds the given [Tag] to the logged in [User]'s interests
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag);

  /// Dismisses the given [Tag] from the logged in [User]'s interests
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag);
}
