import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
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
    "Should insert some options",
    () async {
      // Arrange
      final _userId = await _insertUser(_database);
      final _options = MoorOptionsCompanion.insert(
        userId: _userId,
        languageCode: "es",
      );
      // Act
      final _insertedOptionsId = await _database.moorOptionsDao.insertOptions(_options);
      final _moorOptions = await _database.moorOptionsDao.getOptionsById(_insertedOptionsId);
      // Assert
      expect(_moorOptions.toCompanion(true), _options.copyWith(id: Value(_insertedOptionsId)));
    },
  );
  test(
    "Should delete all options",
    () async {
      // Arrange
      final _userId = await _insertUser(_database);
      final _options = MoorOptionsCompanion.insert(
        userId: _userId,
        languageCode: "es",
      );
      // Act
      await _database.moorOptionsDao.insertOptions(_options);
      final _optionsDeletedAmount = await _database.moorOptionsDao.deleteAllOptions();
      // Assert
      expect(_optionsDeletedAmount, 1);
    },
  );
  test(
    "Should get a given user's options",
    () async {
      // Arrange
      final _userId = await _insertUser(_database);
      final _options = MoorOptionsCompanion.insert(
        userId: _userId,
        languageCode: "es",
      );
      // Act
      final _insertedOptionsId = await _database.moorOptionsDao.insertOptions(_options);
      final _moorOptions = await _database.moorOptionsDao.getUserOptions(_userId);
      // Assert
      expect(_moorOptions.toCompanion(true), _options.copyWith(id: Value(_insertedOptionsId)));
    },
  );
}

Future<int> _insertUser(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _userId = await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _userId;
}
