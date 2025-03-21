import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

/// Repository for the [Experience] log feature
///
/// Might be merged with the [ExperienceManagementRepositoryInterface] class
abstract class ExperienceLogRepositoryInterface {
  /// Gets a stream of [Experience]s that the given [User] has in its log
  Stream<Either<Failure, KtList<Experience>>> watchUserLog();

  /// Sends the id of an [Experience] so the server takes it out of the logged in [User]'s to do list
  Future<Either<Failure, Unit>> dismissExperienceFromLog(UniqueId experienceId);

  /// Sends the id of an [Experience] so the server adds it to the logged in [User]'s to do list
  Future<Either<Failure, Unit>> addExperienceToLog(UniqueId experienceId);
}
