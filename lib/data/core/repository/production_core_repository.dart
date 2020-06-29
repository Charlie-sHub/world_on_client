import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(
  as: CoreRepositoryInterface,
  env: Environment.prod,
)
class ProductionCoreRepository implements CoreRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> addExperienceToLog(int experienceId) {
    // TODO: implement addExperienceToLog
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteCache() {
    // TODO: implement deleteCache
    throw UnimplementedError();
  }
}
