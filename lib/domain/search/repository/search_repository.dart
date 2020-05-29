import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the search feature
abstract class SearchRepository {
  /// Sends a given [String] to the server and it returns the [User]s with said [String] in their names
  Future<Either<Failure, Set<User>>> searchUsersByName(String name);

  /// Sends a given [String] to the server and it returns the [User]s with said [String] in their usernames
  Future<Either<Failure, Set<User>>> searchUsersByUserName(String username);

  /// Sends a given [String] to the server and it returns the [Experience]s with said [String] in their names
  Future<Either<Failure, Set<Experience>>> searchExperiencesByName(String name);

  /// Sends a given [String] to the server and it returns the [Tag]s with said [String] in their names
  Future<Either<Failure, Set<Tag>>> searchTagsByName(String name);

  /// Sends a [Set] of [Tag]s and it returns the [Experience]s with at least  all the given [Tag]s
  Future<Either<Failure, Set<Experience>>> searchExperiencesByTags(Set<Tag> tags);

  /// Sends a given [int] to the server and it returns the [Experience]s with a difficulty around the given [int]
  Future<Either<Failure, Set<Experience>>> searchExperiencesByDifficulty(int difficulty);
}
