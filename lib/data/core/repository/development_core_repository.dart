import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.dev])
class DevelopmentCoreRepository implements CoreRepositoryInterface {
  @override
  Stream<Either<Failure, User>> watchCurrentUser() {
    throw UnimplementedError();
  }
}
