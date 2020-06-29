import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(
  as: ExperienceLogRepositoryInterface,
  env: Environment.prod,
)
class ProductionExperienceLogRepository implements ExperienceLogRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> addExperienceToLog(int experienceId) {
    // TODO: implement addExperienceToLog
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> dismissExperienceFromLog(int experienceId) {
    // TODO: implement dismissExperienceFromLog
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> loadUserLog() {
    // TODO: implement loadUserLog
    throw UnimplementedError();
  }
}
