import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
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
  // Maybe i could use the methods to initialize the database from the core repository
  // TODO: Test:
  // insertAchievement
  // insertUserAchievement
  // countAchievements
  // deleteAllAchievements
  // deleteAllAchievementsTags
  // deleteAllUsersAchievements
  // watchUserAchievements
}
