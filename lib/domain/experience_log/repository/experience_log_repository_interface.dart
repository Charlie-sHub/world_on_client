import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

/// Repository for the [Experience] log feature
///
/// Might be merged with the [ExperienceManagementRepositoryInterface] class
abstract class ExperienceLogRepositoryInterface {
  /// Gets the [KtSet] of [Experience]s that the  logged in [User] has in its log
  Stream<Either<Failure, KtSet<Experience>>> watchUserLog();

  /// Sends the id of an [Experience] so the server takes it out of the logged in [User]'s to do list
  Future<Either<Failure, Unit>> dismissExperienceFromLog(int experienceId);

  /// Sends the id of an [Experience] so the server adds it to the logged in [User]'s to do list
  Future<Either<Failure, Unit>> addExperienceToLog(int experienceId);
}
