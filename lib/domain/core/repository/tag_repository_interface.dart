import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Abstract class of the [Tag] repository
abstract class TagCoreRepositoryInterface {
  /// Returns all [Tag]s
  // TODO: Change it for getting a limited amount of tags
  Future<Either<Failure, List<Tag>>> getAllTags();

  /// Returns All the [Tag]s which names contains the given string
  Future<Either<Failure, List<Tag>>> getTagsByName(String name);

  /// Gets all the [Tag]s created by a given [User]'s id
  Future<Either<Failure, List<Tag>>> getTagsByCreator(int creatorId);

  /// Gets the [User] that created a given [Tag]
  Future<Either<Failure, User>> getCreator(int id);
}
