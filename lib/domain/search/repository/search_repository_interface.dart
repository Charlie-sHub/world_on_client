import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';

/// Repository for the search feature
abstract class SearchRepositoryInterface {
  /// Sends a given [SearchTerm] to the server and it returns the [User]s with said [SearchTerm] in their names
  Stream<Either<Failure, Set<User>>> searchUsersByName(SearchTerm name);

  /// Sends a given [SearchTerm] to the server and it returns the [User]s with said [SearchTerm] in their usernames
  Stream<Either<Failure, Set<User>>> searchUsersByUserName(SearchTerm username);

  /// Sends a given [SearchTerm] to the server and it returns the [Experience]s with said [SearchTerm] in their names
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByName(SearchTerm name);

  /// Sends a given [SearchTerm] to the server and it returns the [Tag]s with said [SearchTerm] in their names
  Stream<Either<Failure, Set<Tag>>> searchTagsByName(SearchTerm name);

  /// Sends a [Set] of [Tag]s and it returns the [Experience]s with at least  all the given [Tag]s
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByTags(Set<Tag> tags);

  /// Sends a given [int] to the server and it returns the [Experience]s with a difficulty around the given [Difficulty]
  // TODO: make it so only Experiences within a certain distance are returned
  // It'd be useless to give Users Experiences from far away places even if they're as difficult as they want them
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty);
}
