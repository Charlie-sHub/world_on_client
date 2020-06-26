import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

/// Repository for the search feature
abstract class SearchRepositoryInterface {
  /// Sends a given [String] to the server and it returns the [User]s with said [String] in their names
  Stream<Either<Failure, Set<User>>> searchUsersByName(Name name);

  /// Sends a given [String] to the server and it returns the [User]s with said [String] in their usernames
  Stream<Either<Failure, Set<User>>> searchUsersByUserName(Name username);

  /// Sends a given [String] to the server and it returns the [Experience]s with said [String] in their names
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByName(Name name);

  /// Sends a given [String] to the server and it returns the [Tag]s with said [String] in their names
  Stream<Either<Failure, Set<Tag>>> searchTagsByName(Name name);

  /// Sends a [Set] of [Tag]s and it returns the [Experience]s with at least  all the given [Tag]s
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByTags(Set<Tag> tags);

  /// Sends a given [int] to the server and it returns the [Experience]s with a difficulty around the given [int]
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty);
}
