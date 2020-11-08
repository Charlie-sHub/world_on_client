import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_objective_to_moor_objective.dart';
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
  final _objective = getValidObjective();
  test(
    "Should insert a objective",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _moorExperience = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
      // Act
      await _database.moorExperiencesDao.insertExperience(_moorExperience);
      final _moorObjectiveCompanion = domainObjectiveToMoorObjective(_moorExperience.id.value, _objective);
      await _database.moorObjectivesDao.insertObjective(_moorObjectiveCompanion);
      final _moorObjective = await _database.moorObjectivesDao.getObjectiveById(_moorObjectiveCompanion.id.value);
      // Assert
      expect(_moorObjective.toCompanion(true), _moorObjectiveCompanion);
    },
  );
  test(
    "Should delete all objectives",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _moorExperience = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
      // Act
      await _database.moorExperiencesDao.insertExperience(_moorExperience);
      final _moorObjectiveCompanion = domainObjectiveToMoorObjective(_moorExperience.id.value, _objective);
      await _database.moorObjectivesDao.insertObjective(_moorObjectiveCompanion);
      final _objectivesDeletedAmount = await _database.moorObjectivesDao.deleteAllObjectives();
      // Assert
      expect(_objectivesDeletedAmount, 1);
    },
  );
}

Future<String> _insertCreator(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _moorUserRicky.id.value;
}
