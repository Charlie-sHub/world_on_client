import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for authentication and register of new [User]s.
abstract class AuthenticationRepository {
  /// Sends a new [User] to be registered in the database.
  Future<Either<Failure, User>> registerUser(User user);

  /// Send a [User] object with only.
  Future<Either<Failure, User>> logInUser(User user);
}
