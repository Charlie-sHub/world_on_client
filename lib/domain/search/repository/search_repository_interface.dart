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
  Stream<Either<Failure, KtList<User>>> searchUsersByName(SearchTerm name);

  /// Sends a given [SearchTerm] to the server and it returns the [User]s with said [SearchTerm] in their usernames
  Stream<Either<Failure, KtList<User>>> searchUsersByUserName(SearchTerm username);

  /// Sends a given [SearchTerm] to the server and it returns the [Experience]s with said [SearchTerm] in their names
  Stream<Either<Failure, KtList<Experience>>> searchExperiencesByName(SearchTerm name);

  /// Sends a given [SearchTerm] to the server and it returns the [Tag]s with said [SearchTerm] in their names
  Stream<Either<Failure, KtList<Tag>>> searchTagsByName(SearchTerm name);

  /// Sends a [KtList] of [Tag]s and it returns the [Experience]s with at least  all the given [Tag]s
  Stream<Either<Failure, KtList<Experience>>> searchExperiencesByTags(TagSet tags);

  /// Sends a given [int] to the server and it returns the [Experience]s with a difficulty around the given [Difficulty]
  // TODO: make it so only Experiences within a certain distance are returned
  // It'd be useless to give Users Experiences from far away places even if they're as difficult as they want them
  // Same with basically all other experience searches
  Stream<Either<Failure, KtList<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty);
}
