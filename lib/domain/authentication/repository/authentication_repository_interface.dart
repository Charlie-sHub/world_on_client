import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for authentication and registration of new [User]s.
abstract class AuthenticationRepositoryInterface {
  /// Sends a new [User] to be registered in the database.
  Future<Either<Failure, Unit>> register(User user);

  /// Sends a [User] object with only username and password to login in the server.
  Future<Either<Failure, Unit>> logIn(User user);

  /// Calls the Google sign in API to login into the app.
  /// If the user logs in with google but doesn't have a World On Account
  /// an [User] will be returned with the data from google
  /// with the intention of using it to register normally first
  Future<Either<Failure, Option<User>>> logInGoogle();

  /// Gets the [User] currently logged in
  Future<Option<User>> getLoggedInUser();

  /// Logs out of the application
  Future<void> logOut();
// TODO: Add login and registration support with Twitter and Facebook
}
