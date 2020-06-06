import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

/// Repository for the [Experience] log feature
///
/// Might be merged with the [ExperienceManagementRepositoryInterface] class
abstract class ExperienceLogRepositoryInterface {
  /// Gets a [Set] of [Experience]s that a given [User] has to do
  Future<Either<Failure, Set<Experience>>> loadUserLog(int userId);

  /// Sends the id of an [Experience] so the server takes it out of the [User]'s to do list
  Future<Either<Failure, Unit>> dismissExperienceFromLog({int experienceId, int userId});

  /// Sends the id of an [Experience] so the server adds it to the [User]'s to do list
  Future<Either<Failure, Unit>> addExperienceToLog({int experienceId, int userId});
}
