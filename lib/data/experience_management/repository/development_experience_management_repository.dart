import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(as: ExperienceManagementRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) async {
    throw UnimplementedError();
  }

  Future insertExperience(Experience experience) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editExperience(Experience experience) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Experience>> getExperience(UniqueId id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) {
    throw UnimplementedError();
  }
}
