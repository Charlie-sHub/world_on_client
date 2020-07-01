import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

@LazySingleton(
  as: AuthenticationRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentAuthenticationRepository implements AuthenticationRepositoryInterface {
  @override
  Future<Option<User>> getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logIn(User user) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logInGoogle() {
    // TODO: implement logInGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> register(User user) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> registerGoogle() {
    // TODO: implement registerGoogle
    throw UnimplementedError();
  }
}
