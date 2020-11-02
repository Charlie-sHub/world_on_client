import 'package:flutter_test/flutter_test.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_achievement_to_moor_achievement.dart';
import 'package:worldon/data/core/moor/converters/domain_tag_to_moor_tag.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_achievement_to_domain_achievement.dart';
import 'package:worldon/data/core/moor/daos/moor_achievements_dao/moor_achievement_with_tags.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';

import '../../../../test_descriptions.dart';

void main() {
  Database _database;
  setUp(
    () {
      _database = Database.test(VmDatabase.memory());
    },
  );
  tearDown(
    () async {
      await _database.close();
    },
  );
  final _achievement = getValidAchievement();
  test(
    "Should count the amount of achievements",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _moorAchievementList = _createAchievementList(_userId);
      // Act
      for (final _moorAchievement in _moorAchievementList) {
        await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
      }
      final _insertedAchievementsCount = await _database.moorAchievementsDao.countAchievements();
      // Assert
      expect(_insertedAchievementsCount, _moorAchievementList.length);
    },
  );
  group(
    TestDescription.groupInsert,
    () {
      test(
        "Should insert an achievement",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorAchievement = domainAchievementToMoorAchievement(_achievement).copyWith(creatorId: Value(_userId));
          // Act
          final _achievementId = await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
          final _achievementFromDb = await _database.moorAchievementsDao.getAchievementById(_achievementId);
          // Assert
          expect(_achievementFromDb.toCompanion(true), _moorAchievement.copyWith(id: Value(_achievementId)));
        },
      );
      test(
        "Should insert an user achievement relation",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorAchievement = domainAchievementToMoorAchievement(_achievement).copyWith(creatorId: Value(_userId));
          // Act
          final _achievementId = await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
          final _userAchievement = UserAchievementsCompanion.insert(
            userId: _userId,
            achievementId: _achievementId,
          );
          final _userAchievementId = await _database.moorAchievementsDao.insertUserAchievement(_userAchievement);
          // Assert
          expect(_userAchievementId, _userAchievement.userId.value);
        },
      );
    },
  );
  group(
    TestDescription.groupDeletion,
    () {
      test(
        "Should delete all the achievements",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorAchievementList = _createAchievementList(_userId);
          // Act
          for (final _moorAchievement in _moorAchievementList) {
            await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
          }
          final _insertedAchievementsCount = await _database.moorAchievementsDao.countAchievements();
          final _deletedAchievementsCount = await _database.moorAchievementsDao.deleteAllAchievements();
          // Assert
          expect(_deletedAchievementsCount, _insertedAchievementsCount);
        },
      );
      test(
        "Should delete all user achievement relations",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorAchievement = domainAchievementToMoorAchievement(_achievement).copyWith(creatorId: Value(_userId));
          // Act
          final _achievementId = await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
          final _userAchievementList = [
            UserAchievementsCompanion.insert(
              userId: _userId,
              achievementId: _achievementId,
            ),
          ];
          for (final _userAchievement in _userAchievementList) {
            await _database.moorAchievementsDao.insertUserAchievement(_userAchievement);
          }
          final _userAchievementsDeletedCount = await _database.moorAchievementsDao.deleteAllUsersAchievements();
          // Assert
          expect(_userAchievementsDeletedCount, _userAchievementList.length);
        },
      );
    },
  );
  test(
    "Should emit a list of all the achievements of a given user",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _moorAchievementList = _createAchievementList(_userId);
      final _moorTag = domainTagToMoorTag(getValidTag()).copyWith(creatorId: Value(_userId));
      final _achievementList = <Achievement>[];
      // Act
      final _moorTagId = await _database.moorTagsDao.insertTag(_moorTag);
      for (final _moorAchievement in _moorAchievementList) {
        final _achievementId = await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
        final _achievementTagCompanion = AchievementTagsCompanion.insert(
          tagId: _moorTagId,
          achievementId: _achievementId,
        );
        await _database.moorTagsDao.insertAchievementTag(_achievementTagCompanion);
        final _userAchievement = UserAchievementsCompanion.insert(
          userId: _userId,
          achievementId: _achievementId,
        );
        await _database.moorAchievementsDao.insertUserAchievement(_userAchievement);
        final _moorTagFromDb = await _database.moorTagsDao.getTagById(_moorTagId);
        final _achievementFromDb = await _database.moorAchievementsDao.getAchievementById(_achievementId);
        final _achievementWithRelations = MoorAchievementWithRelations(
          achievement: _achievementFromDb,
          tags: [_moorTagFromDb],
        );
        _achievementList.add(moorAchievementToDomainAchievement(_achievementWithRelations));
      }
      // Assert
      expect(
          _database.moorAchievementsDao.watchUserAchievements(_userId).map(
                (_achievementWithRelationsList) => _achievementWithRelationsList
                    .map(
                      (_achievementWithRelations) => moorAchievementToDomainAchievement(_achievementWithRelations),
                    )
                    .toList(),
              ),
          emitsInOrder([_achievementList]));
    },
  );
}

List<MoorAchievementsCompanion> _createAchievementList(int _userId) {
  final _achievement = getValidAchievement();
  final _moorAchievementHardest = domainAchievementToMoorAchievement(_achievement).copyWith(
    creatorId: Value(_userId),
  );
  final _moorAchievementBest = _moorAchievementHardest.copyWith(
    name: const Value("The Best"),
    description: const Value("You're the best"),
  );
  final _moorAchievementFastest = _moorAchievementHardest.copyWith(
    creatorId: Value(_userId),
    name: const Value("The Fastest"),
    description: const Value("You're the fastest"),
  );
  final _moorAchievementStrongest = _moorAchievementHardest.copyWith(
    creatorId: Value(_userId),
    name: const Value("The Strongest"),
    description: const Value("You're the strongest"),
  );
  final _moorAchievementList = [
    _moorAchievementHardest,
    _moorAchievementBest,
    _moorAchievementFastest,
    _moorAchievementStrongest,
  ];
  return _moorAchievementList;
}

Future<int> _insertCreator(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _userId = await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _userId;
}
