import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for authentication and registration of new [User]s.
abstract class AuthenticationRepositoryInterface {
  /// Sends a new [User] to be registered in the database.
  Future<Either<Failure, User>> register(User user);

  /// Sends a [User] object with only username and password to login in the server.
  Future<Either<Failure, User>> logIn(User user);

  /// Calls the Google sign in API to register a new [User].
  // TODO: Check if this is necessary
  // Not sure if this is necessary though, maybe it'd be better to use [logInGoogle] and then [register]
  Future<Either<Failure, Unit>> registerGoogle();

  /// Calls the Google sign in API to login into the app.
  Future<Either<Failure, Unit>> logInGoogle();
// TODO: Add login and registration support with Twitter and Facebook
}
