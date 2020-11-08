import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_experience_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_tag_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_user_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/moor_achievement_to_domain_achievement.dart';
import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
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
      final _moorUser = _moorUserFromDomainUserToUpdate(user);
      await _database.moorUsersDao.updateUser(_moorUser);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  MoorUser _moorUserFromDomainUserToUpdate(User user) => MoorUser(
        id: user.id.getOrCrash(),
        name: user.name.getOrCrash(),
        username: user.username.getOrCrash(),
        password: user.password.getOrCrash(),
        email: user.email.getOrCrash(),
        birthday: user.birthday.getOrCrash(),
        description: user.description.getOrCrash(),
        imageURL: user.imageFileOption.fold(
          () => user.imageURL ?? Assets.userPlaceholder,
          (imageFile) => imageFile.path,
        ),
        level: user.level.getOrCrash(),
        experiencePoints: user.experiencePoints.getOrCrash(),
        privacy: user.privacy,
        adminPowers: user.adminPowers,
        enabled: user.enabled,
        lastLogin: user.lastLogin.getOrCrash(),
        creationDate: user.creationDate.getOrCrash(),
        modificationDate: user.modificationDate.getOrCrash(),
        isLoggedIn: true,
      );

  @override
  Future<Either<Failure, User>> getUser(UniqueId id) async {
    try {
      final _moorUser = await _database.moorUsersDao.getUserById(id.getOrCrash());
      final _user = moorUserToDomainUser(_moorUser);
      return right(_user);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
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
  Future<Either<Failure, Unit>> blockUser(UniqueId blockedId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userBlockRelation = _createUserBlockRelation(blockedId.getOrCrash(), _moorUserWithRelations.user.id);
          await _database.moorUsersDao.blockUser(_userBlockRelation);
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
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
  Future<Either<Failure, Unit>> unBlockUser(UniqueId blockedId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userBlockRelation = _createUserBlockRelation(blockedId.getOrCrash(), _moorUserWithRelations.user.id);
          await _database.moorUsersDao.unBlockUser(_userBlockRelation);
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  UserBlockRelationsCompanion _createUserBlockRelation(String blockedId, String loggedInUserId) {
    return UserBlockRelationsCompanion.insert(
      blockedId: blockedId,
      blockerId: loggedInUserId,
    );
  }

  @override
  Future<Either<Failure, Unit>> followUser(UniqueId userToFollowId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userFollowRelation = _createUserFollowRelation(userToFollowId.getOrCrash(), _moorUserWithRelations.user.id);
          await _database.moorUsersDao.followUser(_userFollowRelation);
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
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
  Future<Either<Failure, Unit>> unFollowUser(UniqueId userToUnFollowId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userFollowRelation = _createUserFollowRelation(userToUnFollowId.getOrCrash(), _moorUserWithRelations.user.id);
          await _database.moorUsersDao.unFollowUser(_userFollowRelation);
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  UserFollowRelationsCompanion _createUserFollowRelation(String followedId, String loggedInUserId) {
    return UserFollowRelationsCompanion.insert(
      followedId: followedId,
      followingId: loggedInUserId,
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesCreated(UniqueId id) async* {
    final _stream = _database.moorExperiencesDao.watchExperiencesCreated(id.getOrCrash());
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesDone(UniqueId id) async* {
    final _stream = _database.moorExperiencesDao.watchExperiencesDone(id.getOrCrash());
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesLiked(UniqueId id) async* {
    final _stream = _database.moorExperiencesDao.watchExperiencesLiked(id.getOrCrash());
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowedUsers(UniqueId id) async* {
    final _stream = _database.moorUsersDao.watchFollowedUsers(id.getOrCrash());
    yield* createUserListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchFollowingUsers(UniqueId id) async* {
    final _stream = _database.moorUsersDao.watchFollowingUsers(id.getOrCrash());
    yield* createUserListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Achievement>>> watchUserAchievements(UniqueId userId) async* {
    final _stream = _database.moorAchievementsDao.watchUserAchievements(userId.getOrCrash());
    yield* _stream.map(
      (_moorAchievementList) {
        if (_moorAchievementList != null && _moorAchievementList.isNotEmpty) {
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
  Stream<Either<Failure, KtList<Tag>>> watchUserInterests(UniqueId userId) async* {
    final _stream = _database.moorTagsDao.watchUserInterests(userId.getOrCrash());
    yield* createTagListStream(_stream, _logger);
  }

  @override
  Future<Either<Failure, Unit>> removeExperienceLiked(UniqueId experienceId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> deleteExperience(UniqueId experienceId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchBlockedUsers(UniqueId id) {
    return _oldBlockedUsersSimulation();
  }

  Stream<Either<Failure, KtList<User>>> _oldBlockedUsersSimulation() {
    Either<Failure, KtList<User>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidUser(),
        User.empty(),
        getValidUser().copyWith(
          id: UniqueId(),
          name: Name("Carlos"),
          username: Name("carlos"),
        ),
        getValidUser().copyWith(
          id: UniqueId(),
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
