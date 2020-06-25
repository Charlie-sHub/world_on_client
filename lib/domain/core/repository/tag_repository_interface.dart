import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Abstract class of the [Tag] repository
abstract class TagCoreRepositoryInterface {
  // TODO: Figure out if these tag use-cases should be in their own feature
  /// Returns all [Tag]s
  Future<Either<Failure, List<Tag>>> getAllTags();

  /// Returns All the [Tag]s which names contains the given string
  Future<Either<Failure, List<Tag>>> getTagsByName(String name);

  /// Gets all the [Tag]s created by a given [User]'s id
  Future<Either<Failure, List<Tag>>> getTagsByCreator(int creatorId);

  /// Gets the [User] that created a given [Tag]
  Future<Either<Failure, User>> getCreator(int id);
}
