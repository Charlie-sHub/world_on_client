import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> finishExperience(UniqueId experienceId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userDoneExperience = UserDoneExperiencesCompanion.insert(
            userId: _moorUserWithRelations.user.id,
            experienceId: experienceId.getOrCrash(),
          );
          await _database.moorExperiencesDao.insertExperienceDone(_userDoneExperience);
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
  Future<Either<Failure, Unit>> likeExperience(UniqueId experienceId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userLikedExperience = UserLikedExperiencesCompanion.insert(
            userId: _moorUserWithRelations.user.id,
            experienceId: experienceId.getOrCrash(),
          );
          await _database.moorExperiencesDao.insertExperienceLiked(_userLikedExperience);
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
  Future<Either<Failure, Unit>> dislikeExperience(UniqueId experienceId) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userLikedExperience = UserLikedExperiencesCompanion.insert(
            userId: _moorUserWithRelations.user.id,
            experienceId: experienceId.getOrCrash(),
          );
          await _database.moorExperiencesDao.removeExperienceLiked(_userLikedExperience);
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
  Future<Either<Failure, Unit>> rateDifficulty({
    Difficulty difficulty,
    UniqueId experienceId,
  }) async {
    try {
      final _moorExperience = await _database.moorExperiencesDao.getExperienceById(experienceId.getOrCrash());
      final _difficulty = _moorExperience.difficulty + difficulty.getOrCrash() / 2;
      await _database.moorExperiencesDao.updateExperience(
        _moorExperience.copyWith(
          difficulty: _difficulty.round(),
        ),
      );
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

  @override
  Future<Either<Failure, Unit>> rewardUser(int experiencePoints) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          /*
          final _moorExperience = await _database.moorExperiencesDao.getExperienceById(experienceId.getOrCrash());
          final _experiencePoints = _moorUserWithRelations.user.experiencePoints + _moorExperience.difficulty * 10;
          await _database.moorUsersDao.updateUser(
            _moorUserWithRelations.user.copyWith(
              experiencePoints: _experiencePoints,
            ),
          );
           */
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
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    if (_random.nextBool()) {
      final _experienceSet = KtSet.of(
        getValidExperience(),
        getValidExperience().copyWith(
          id: UniqueId(),
          title: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: UniqueId(),
          title: Name("Itaque"),
        ),
      );
      return getRightFuture(_experienceSet);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
