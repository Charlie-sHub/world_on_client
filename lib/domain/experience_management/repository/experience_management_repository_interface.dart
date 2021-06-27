import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Repository for the management of [Experience]s.
abstract class ExperienceManagementRepositoryInterface {
  /// Sends an [Experience] to be saved on the server.
  Future<Either<Failure, Unit>> createExperience(Experience experience);

  /// Sends an edited [Experience] for the changes to be saved on the server.
  Future<Either<Failure, Unit>> editExperience(
    Experience experience,
    List<String> imageUrlListToDelete,
  );

  /// Sends the id of an [Experience] to the server so this one can be deleted
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId);

  /// Sends and id to the server so it can return the associated [Experience]
  Future<Either<Failure, Experience>> getExperience(UniqueId id);
}
