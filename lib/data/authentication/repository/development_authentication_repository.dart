import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_user_with_relations_to_domain_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.dev])
class DevelopmentAuthenticationRepository implements AuthenticationRepositoryInterface {
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Option<User>> getLoggedInUser() async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      return _moorUser.fold(
        () => none(),
        (_moorUserWithRelations) => some(moorUserWithRelationsToDomainUser(_moorUserWithRelations)),
      );
    } catch (exception) {
      _logger.e("Moor Database error: $exception");
      return none();
    }
  }

  @override
  Future<Either<Failure, Unit>> logIn(User user) async {
    try {
      final _moorUser = await _database.moorUsersDao.getUserByUsernameAndPassword(
        username: user.username.getOrCrash(),
        password: user.password.getOrCrash(),
      );
      if (_moorUser != null) {
        await _database.moorUsersDao.updateUser(
          _moorUser.copyWith(
            isLoggedIn: true,
          ),
        );
        return right(unit);
      } else {
        return left(
          const Failure.authenticationData(
            AuthenticationDataFailure.invalidCredentials(),
          ),
        );
      }
    } catch (exception) {
      _logger.e("Moor Database error: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> logOut() async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          await _database.moorUsersDao.updateUser(
            _moorUserWithRelations.user.copyWith(
              isLoggedIn: false,
            ),
          );
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Moor Database error: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> register(User user) async {
    try {
      final _moorUserCompanion = domainUserToMoorUserCompanion(user);
      final _userId = await _database.moorUsersDao.insertUser(_moorUserCompanion);
      await _database.moorOptionsDao.insertOptions(
        MoorOptionsCompanion.insert(
          userId: _userId,
          languageCode: user.options.languageCode,
        ),
      );
      await _database.moorTagsDao.deleteUserInterests(_userId);
      for (final _tagId in user.interestsIds) {
        final _userInterest = UserInterestsCompanion.insert(
          tagId: _tagId,
          userId: _userId,
        );
        await _database.moorTagsDao.insertUserInterest(_userInterest);
      }
      return right(unit);
    } catch (exception) {
      _logger.e("Moor Database error: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> logInGoogle() {
    // It'll always fails just so it doesn't mess with the simulation of the normal log in
    return getLeftServerErrorFuture();
  }

  @override
  Future<Either<Failure, Unit>> registerGoogle() {
    // It'll always fails just so it doesn't mess with the simulation of the normal log in
    return getLeftServerErrorFuture();
  }
}
