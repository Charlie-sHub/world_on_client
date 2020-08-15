import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.dev])
class DevelopmentAuthenticationRepository implements AuthenticationRepositoryInterface {
  final _random = Random();

  @override
  Future<Option<User>> getLoggedInUser() {
    // get the user from the dao with loggedIn to true
    // Transform to domain user and return
    return Future.delayed(
      const Duration(milliseconds: 10),
      () => some(getValidUser()),
    );
  }

  @override
  Future<Either<Failure, Unit>> logIn(User user) {
    // get the user from the dao by the username and password
    // set the isLoggedIn to true
    // update user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> logInGoogle() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    // get the logged in user from the dao
    // set the isLoggedIn to false
    // update user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> register(User user) {
    // Transform user to moorUser
    // create with the user dao
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> registerGoogle() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
