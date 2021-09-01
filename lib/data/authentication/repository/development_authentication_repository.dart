import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.dev])
class DevelopmentAuthenticationRepository implements AuthenticationRepositoryInterface {
  @override
  Future<Option<User>> getLoggedInUser() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logIn(User user) async {
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> register(User user) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Option<User>>> logInGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> resetPassword(EmailAddress emailAddress) {
    throw UnimplementedError();
  }
}
