import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the cached [User] credentials.
abstract class CachedCredentialsRepositoryInterface {
  /// Gets the cached [User] from the local cache source if there's one.
  Future<Either<Failure, User>> getCachedUser();
}
