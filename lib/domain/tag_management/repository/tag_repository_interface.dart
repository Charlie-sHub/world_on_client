import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Abstract class of the [Tag] repository
abstract class TagCoreRepositoryInterface {
  // TODO: Figure out if these tag use-cases should be in their own feature
  /// Returns all [Tag]s
  Stream<Either<Failure, List<Tag>>> getAllTags();

  /// Gets all the [Tag]s created by a given [User]'s id
  Stream<Either<Failure, List<Tag>>> getTagsByCreator(int creatorId);

  /// Gets the [User] that created a given [Tag]
  Future<Either<Failure, User>> getCreator(int id);

  /// Adds the given [Tag] to the logged in [User]'s interests
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag);

  /// Dismisses the given [Tag] from the logged in [User]'s interests
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag);
}
