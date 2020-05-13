import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';

/// Abstract class of the [Tag] repository
abstract class TagRepository {
  /// Returns all [Tag]s
  ///
  /// Probably useless
  /// Will likely need to be changed as it's not scalable for the future, maybe change it for getting a set amount of tags
  Future<Either<Failure, List<Tag>>> getAllTags();

  /// Returns All the [Tag]s which names contains the given string
  Future<Either<Failure, List<Tag>>> getTagsByName(String name);

  /// Gets a [Tag] by a given id
  ///
  /// Probably useless
  Future<Either<Failure, Tag>> getTag(int id);

  /// Gets all the [Tag]s created by a given [User]'s id
  Future<Either<Failure, List<Tag>>> getTagsByCreator(int creatorId);

  /// Gets the [User] that created a given [Tag]
  Future<Either<Failure, User>> getCreator(int id);

  /// Creates a [Tag], in other words takes a [Tag] and attempts to send it to the server to save it on the database
  Future<Either<Failure, void>> createTag(Tag tag);

  /// Sends a modified [Tag] to the database to update it
  Future<Either<Failure, void>> editTag(Tag tag);

  /// Deletes a [Tag]
  Future<Either<Failure, void>> removeTag(int id);
}
