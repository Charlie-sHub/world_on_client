import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

@LazySingleton(as: RemoteOptionsRepositoryInterface, env: [Environment.prod])
class ProductionRemoteOptionsRepository implements RemoteOptionsRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> deleteUser(int userId) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> saveGlobalOptions(Options option) {
    // TODO: implement saveGlobalOptions
    throw UnimplementedError();
  }
}
