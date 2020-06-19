import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the [Options] feature's remote connection
abstract class RemoteOptionsRepositoryInterface {
  /// Sends a [Options] object to the server to be saved
  // TODO: add user id
  Future<Either<Failure, Unit>> saveGlobalOptions(Options option);

  /// Sends a [User] id to the server to delete the associated [User]
  Future<Either<Failure, Unit>> deleteUser(int userId);
}
