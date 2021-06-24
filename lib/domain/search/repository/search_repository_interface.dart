import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

/// Repository for the search feature
abstract class SearchRepositoryInterface {
  /// Sends a given [SearchTerm] to the server and it returns the [User]s with said [SearchTerm] in their names
  Stream<Either<Failure, KtList<User>>> watchUsersByName(SearchTerm name);

  /// Sends a given [SearchTerm] to the server and it returns the [Tag]s with said [SearchTerm] in their names
  Stream<Either<Failure, KtList<Tag>>> watchTagsByName(SearchTerm name);

  /// Sends a given [SearchTerm] to the server and it returns the [Experience]s with said [SearchTerm] in their names
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTitle(SearchTerm title);

  /// Sends a [KtList] of [Tag]s and it returns the [Experience]s with at least  all the given [Tag]s
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTags(TagSet tags);

  /// Sends a given [int] to the server and it returns the [Experience]s with a difficulty around the given [Difficulty]
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByDifficulty(Difficulty difficulty);

  /// Sends a given [SearchTerm] to the server and it returns the [User]s with said [SearchTerm] in their names
  /// That the current [User] can share to
  Future<Either<Failure, KtList<User>>> searchShareableUsers(SearchTerm name);

  /// Gets all the [User]s that the current  [User] can share to
  Future<Either<Failure, KtList<User>>> getShareableUsers();
}
