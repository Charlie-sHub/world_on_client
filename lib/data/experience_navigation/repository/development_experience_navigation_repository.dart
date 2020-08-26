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
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> finishExperience(int experienceId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userDoneExperience = UserDoneExperiencesCompanion.insert(
        userId: _moorUser.id,
        experienceId: experienceId,
      );
      await _database.moorExperiencesDao.insertExperienceDone(_userDoneExperience);
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
  Future<Either<Failure, Unit>> likeExperience(int experienceId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userLikedExperience = UserLikedExperiencesCompanion.insert(
        userId: _moorUser.id,
        experienceId: experienceId,
      );
      await _database.moorExperiencesDao.insertExperienceLiked(_userLikedExperience);
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
  Future<Either<Failure, Unit>> rateDifficulty({
    Difficulty difficulty,
    int experienceId,
  }) async {
    try {
      final _moorExperience = await _database.moorExperiencesDao.getExperienceById(experienceId);
      final _difficulty = _moorExperience.difficulty + difficulty.getOrCrash() / 2;
      await _database.moorExperiencesDao.updateExperience(
        _moorExperience.copyWith(
          difficulty: _difficulty.round(),
        ),
      );
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
  Future<Either<Failure, Unit>> rewardUser(int experienceId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _moorExperience = await _database.moorExperiencesDao.getExperienceById(experienceId);
      final _experiencePoints = _moorUser.experiencePoints + _moorExperience.difficulty * 10;
      await _database.moorUsersDao.updateUser(
        _moorUser.copyWith(
          experiencePoints: _experiencePoints,
        ),
      );
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
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    if (_random.nextBool()) {
      final _experienceSet = KtSet.of(
        getValidExperience(),
        getValidExperience().copyWith(
          id: 2,
          title: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          title: Name("Itaque"),
        ),
      );
      return getRightFuture(_experienceSet);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
