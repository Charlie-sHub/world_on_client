import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Abstract class of the [Tag] repository
abstract class TagManagementRepositoryInterface {
  /// Gets a [Tag] by a given id
  Future<Either<Failure, Tag>> getTag(UniqueId id);

  /// Gets a [KtSet] of [Tag]s by a given [Set] of  [UniqueId]s
  Future<Either<Failure, KtSet<Tag>>> getTags(Set<UniqueId> tagIds);

  /// Creates a [Tag], in other words takes a [Tag] and attempts to send it to the server to save it on the database
  Future<Either<Failure, Unit>> createTag(Tag tag);

  /// Sends a modified [Tag] to the database to update it
  Future<Either<Failure, Unit>> editTag(Tag tag);

  /// Deletes a [Tag]
  Future<Either<Failure, Unit>> removeTag(UniqueId id);
}
