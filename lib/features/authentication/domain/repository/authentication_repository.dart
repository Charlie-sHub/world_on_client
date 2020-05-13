import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';

/// Repository for authentication and register of new [User]s.
abstract class AuthenticationRepository {
  /// Sends a new [User] to be registered in the database.
  Future<Either<Failure, User>> registerUser(User user);

  /// Send a [User] object with only.
  Future<Either<Failure, void>> logInUser(User user);
}
