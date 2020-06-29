import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(
  as: ExperienceManagementRepositoryInterface,
  env: Environment.prod,
)
class ProductionExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) {
    // TODO: implement createExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> editExperience(Experience experience) {
    // TODO: implement editExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Experience>> getExperience(int id) {
    // TODO: implement getExperience
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeExperience(int id) {
    // TODO: implement removeExperience
    throw UnimplementedError();
  }
}
