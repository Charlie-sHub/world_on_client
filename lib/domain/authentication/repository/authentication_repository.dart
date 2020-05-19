import 'package:dartz/dartz.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for authentication and registration of new [User]s.
abstract class AuthenticationRepository {
  /// Sends a new [User] to be registered in the database.
  Future<Either<AuthenticationFailure, User>> register(User user);

  /// Sends a [User] object with only username and password to login in the server.
  Future<Either<AuthenticationFailure, User>> logIn(User user);

  /// Calls the Google sign in API to register a new [User].
  ///
  // TODO: Check if this is necessary
  // Not sure if this is necessary though, maybe it'd be better to use [logInGoogle] and then [register]
  Future<Either<AuthenticationFailure, Unit>> registerGoogle();

  /// Calls the Google sign in API to login into the app.
  Future<Either<AuthenticationFailure, Unit>> logInGoogle();
// TODO: Add login and registration supper with Twitter and Facebook
}
