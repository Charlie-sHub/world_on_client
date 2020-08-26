import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_experience_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_tag_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_user_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_achievement_to_domain_achievement.dart';
import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ProfileRepositoryInterface, env: [Environment.dev])
class DevelopmentProfileRepository implements ProfileRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> editUser(User user) async {
    try {
      final _moorUser = domainUserToMoorUserCompanion(user);
      await _database.moorUsersDao.updateUser(_moorUser);
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
  Future<Either<Failure, Unit>> blockUser(int blockedId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userBlockRelation = _createUserBlockRelation(blockedId, _moorUser);
      await _database.moorUsersDao.blockUser(_userBlockRelation);
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
  Future<Either<Failure, Unit>> unBlockUser(int blockedId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userBlockRelation = _createUserBlockRelation(blockedId, _moorUser);
      await _database.moorUsersDao.unBlockUser(_userBlockRelation);
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

  UserBlockRelationsCompanion _createUserBlockRelation(int blockedId, MoorUser _moorUser) {
    return UserBlockRelationsCompanion.insert(
      blockedId: blockedId,
      blockerId: _moorUser.id,
    );
  }

  @override
  Future<Either<Failure, Unit>> followUser(int userToFollowId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userFollowRelation = _createUserFollowRelation(userToFollowId, _moorUser);
      await _database.moorUsersDao.followUser(_userFollowRelation);
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
  Future<Either<Failure, Unit>> unFollowUser(int userToUnFollowId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userFollowRelation = _createUserFollowRelation(userToUnFollowId, _moorUser);
      await _database.moorUsersDao.unFollowUser(_userFollowRelation);
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

  UserFollowRelationsCompanion _createUserFollowRelation(int userToUnFollowId, MoorUser _moorUser) {
    return UserFollowRelationsCompanion.insert(
      followedId: userToUnFollowId,
      followingId: _moorUser.id,
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(int id) async* {
    final _stream = _database.moorExperiencesDao.watchExperiencesCreated(id);
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(int id) async* {
    final _stream = _database.moorExperiencesDao.watchExperiencesDone(id);
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(int id) async* {
    final _stream = _database.moorExperiencesDao.watchExperiencesLiked(id);
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(int id) async* {
    final _stream = _database.moorUsersDao.watchFollowedUsers(id);
    yield* createUserListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(int id) async* {
    final _stream = _database.moorUsersDao.watchFollowingUsers(id);
    yield* createUserListStream(_stream, _logger);
  }

  @override
  Future<Either<Failure, User>> getUser(int id) async {
    try {
      final _moorUser = await _database.moorUsersDao.getUserById(id);
      final _user = moorUserToDomainUser(_moorUser);
      return right(_user);
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
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(int userId) async* {
    final _stream = _database.moorAchievementsDao.watchUserAchievements(userId);
    yield* _stream.map(
      (_moorAchievementList) {
        if (_moorAchievementList != null) {
          return right<Failure, KtList<Achievement>>(
            _moorAchievementList
                .map(
                  (_moorAchievementWithRelations) => moorAchievementToDomainAchievement(_moorAchievementWithRelations),
                )
                .toImmutableList()
                .sortedBy(
                  (_tag) => _tag.creationDate.getOrCrash(),
                ),
          );
        } else {
          return left<Failure, KtList<Achievement>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
        (_error) {
        final _errorMessage = "Development repository error: $_error";
        _logger.e(_errorMessage);
        return left(
          Failure.coreData(
            CoreDataFailure.serverError(
              errorString: _errorMessage,
            ),
          ),
        );
      },
    );
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(int userId) async* {
    final _stream = _database.moorTagsDao.watchUserInterests(userId);
    yield* createTagListStream(_stream, _logger);
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(int experienceId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(int experienceId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(int id) {
    return _oldBlockedUsersSimulation();
  }

  Stream<Either<Failure, KtList<User>>> _oldBlockedUsersSimulation() {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: 2,
          name: Name("Carlos"),
          username: Name("carlos"),
        ),
        getValidUser().copyWith(
          id: 3,
          name: Name("Juan"),
          username: Name("juan"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
