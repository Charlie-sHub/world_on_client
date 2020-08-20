import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.dev])
class DevelopmentAuthenticationRepository implements AuthenticationRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Future<Option<User>> getLoggedInUser() async {
    final _moorUser = await _database.moorUsersDao.getLoggedInUser();
    final _moorOptions = await _database.moorUsersDao.getUserOptions(_moorUser.id);
    final _user = moorUserToDomainUser(_moorUser, _moorOptions);
    return some(_user);
  }
  
  @override
  Future<Either<Failure, Unit>> logIn(User user) async {
    final _moorUser = await _database.moorUsersDao.getUserByUsernameAndPassword(
      username: user.username.getOrCrash(),
      password: user.password.getOrCrash(),
    );
    await _database.moorUsersDao.updateUser(
      _moorUser.copyWith(
        isLoggedIn: true,
      ),
    );
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> logInGoogle() {
    // It'll always fails just so it doesn't mess with the simulation of the normal log in
    return getLeftServerErrorFuture();
  }
  
  @override
  Future<Either<Failure, Unit>> logOut() async {
    final _moorUser = await _database.moorUsersDao.getLoggedInUser();
    await _database.moorUsersDao.updateUser(
      _moorUser.copyWith(
        isLoggedIn: false,
      ),
    );
    return right(unit);
  }
  
  @override
  Future<Either<Failure, Unit>> register(User user) async {
    // TODO: Register the interests
    final _moorUserCompanion = domainUserToMoorUserCompanion(user);
    await _database.moorUsersDao.insertUser(_moorUserCompanion);
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> registerGoogle() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
