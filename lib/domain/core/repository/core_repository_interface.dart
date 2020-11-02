import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';

/// Miscellaneous repository
abstract class CoreRepositoryInterface {
  /// Deletes everything in the cache
  // Should this be here? as in, in this repository?
  Future<Either<Failure, Unit>> deleteCache();
}
