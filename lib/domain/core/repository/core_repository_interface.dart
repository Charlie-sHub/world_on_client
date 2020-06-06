import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Miscellaneous repository
abstract class CoreRepositoryInterface {
  /// Sends an [User] and [Experience] id to the server so it adds the [Experience] to the [User]'s list of [Experience]s to do
  Future<Either<Failure, Unit>> addExperienceToLog({
    int userId,
    int experienceId,
  });
}
