import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

/// Repository for the [Options] feature's remote connection
abstract class RemoteOptionsRepositoryInterface {
  /// Sends a [Options] object to the server to be saved
  Future<Either<Failure, Unit>> saveGlobalOptions(
    Options option,
  );

  /// Sends a [User] id to the server to delete the associated [User]
  // Leaving the userId param in as this method could be used by admins when deleting User's accounts
  // maybe it will be changed in the future, or created separate methods for each use-case.
  Future<Either<Failure, Unit>> deleteUser(UniqueId userId);
}
