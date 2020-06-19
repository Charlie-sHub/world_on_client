import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Miscellaneous repository
abstract class CoreRepositoryInterface {
  /// Sends an [User] and [Experience] id to the server so it adds the [Experience] to the [User]'s list of [Experience]s to do
  Future<Either<Failure, Unit>> addExperienceToLog({
    @required int userId,
    @required int experienceId,
  });

  /// Deletes everything in the cache
  // Should this be here? as in, in this repository?
  Future<Either<Failure, Unit>> deleteCache();
}
