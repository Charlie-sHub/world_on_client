import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_reward.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_reward_to_moor_reward.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

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
  test(
    "Should insert a reward",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _experience = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
      final _reward = getValidReward();
      // Act
      final _experienceId = await _database.moorExperiencesDao.insertExperience(_experience);
      final _moorRewardCompanion = domainRewardToMoorReward(_experienceId, _reward);
      final _rewardId = await _database.moorRewardsDao.insertReward(_moorRewardCompanion);
      final _moorReward = await _database.moorRewardsDao.getRewardById(_rewardId);
      // Assert
      expect(_moorReward.toCompanion(true), _moorRewardCompanion.copyWith(id: Value(_rewardId)));
    },
  );
  test(
    "Should delete all rewards",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _experience = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
      final _reward = getValidReward();
      // Act
      final _experienceId = await _database.moorExperiencesDao.insertExperience(_experience);
      final _moorRewardCompanion = domainRewardToMoorReward(_experienceId, _reward);
      await _database.moorRewardsDao.insertReward(_moorRewardCompanion);
      final _rewardsDeletedAmount = await _database.moorRewardsDao.deleteAllRewards();
      // Assert
      expect(_rewardsDeletedAmount, 1);
    },
  );
}

Future<int> _insertCreator(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _userId = await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _userId;
}
