import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.dev])
class DevelopmentCoreRepository implements CoreRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> deleteCache() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  /// Checks if the simulation database has any data in it, if it doesn't then it inserts several entities
  /// Deletes everything in the database in case of error
  Future<void> initializeDatabase() async {
    try {
      final _usersCount = await _database.moorUsersDao.countUsers();
      if (_usersCount <= 0) {
        // TODO: Insert Users
      }
      final _achievementsCount = await _database.moorAchievementsDao.countAchievements();
      if (_achievementsCount <= 0) {
        //TODO: Insert Achievements
      }
      final _experiencesCount = await _database.moorExperiencesDao.countExperiences();
      if (_experiencesCount <= 0) {
        // TODO: Insert Experiences
      }
      final _tagsCount = await _database.moorTagsDao.countTags();
      if (_tagsCount <= 0) {
        // TODO: Insert Tags
      }
      final _commentsCount = await _database.moorCommentsDao.countComments();
      if (_commentsCount <= 0) {
        //TODO: Insert Comments
      }
      // TODO: Insert Relations
    } catch (exception) {
      // TODO: Delete relations
      // Just in case the foreign keys don't work
      _logger.e("Moor Database error: $exception");
      final _deletedAchievementsAmount = await _database.moorAchievementsDao.deleteAllAchievements();
      _logger.i("Deleted  $_deletedAchievementsAmount achievements");
      final _deletedTagsAmount = await _database.moorTagsDao.deleteAllTags();
      _logger.i("Deleted  $_deletedTagsAmount tags");
      final _deletedCommentsAmount = await _database.moorCommentsDao.deleteAllComments();
      _logger.i("Deleted  $_deletedCommentsAmount comments");
      final _deletedNotificationsAmount = await _database.moorNotificationsDao.deleteAllNotifications();
      _logger.i("Deleted  $_deletedNotificationsAmount notifications");
      final _deletedObjectivesAmount = await _database.moorObjectivesDao.deleteAllObjectives();
      _logger.i("Deleted  $_deletedObjectivesAmount objectives");
      final _deletedOptionsAmount = await _database.moorOptionsDao.deleteAllOptions();
      _logger.i("Deleted  $_deletedOptionsAmount options");
      final _deletedRewardsAmount = await _database.moorRewardsDao.deleteAllRewards();
      _logger.i("Deleted  $_deletedRewardsAmount rewards");
      final _deletedExperiencesAmount = await _database.moorExperiencesDao.deleteAllExperiences();
      _logger.i("Deleted  $_deletedExperiencesAmount experiences");
      final _deletedUsersAmount = await _database.moorUsersDao.deleteAllUsers();
      _logger.i("Deleted  $_deletedUsersAmount users");
    }
  }
}
