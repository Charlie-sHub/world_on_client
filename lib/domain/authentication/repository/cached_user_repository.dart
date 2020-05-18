import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the cached [User] credentials.
abstract class CachedUserRepository {
  /// Gets the cached [User] from the local cache source if there's one.
  Future<Either<Failure, User>> getCachedUser();
}
