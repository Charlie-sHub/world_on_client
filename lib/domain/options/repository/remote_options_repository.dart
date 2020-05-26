import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/options.dart';

/// Repository for the [Options] feature's remote connection
abstract class RemoteOptionsRepository {
  /// Sends a [Options] object to the server to be saved
  Future<Either<Failure, Unit>> saveGlobalOptions(Options option);
}
