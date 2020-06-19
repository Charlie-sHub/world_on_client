import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the main feed of the application
abstract class MainFeedRepositoryInterface {
  /// Returns a [List] of [Experience]s corresponding to the latest creations of the [User]s the given [User] follows
  // Gotta check how to make it so it doesn't return the same Experiences, maybe by sending it a list of the ids of the experiences previously sent.
  Future<Either<Failure, List<Experience>>> fillFeed(int userId);
}
