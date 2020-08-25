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
  // TODO: Test:
  // insertExperience
  // updateExperience
  // insertExperienceTodo
  // insertExperienceImage
  // removeExperienceTodo
  // insertExperienceDone
  // insertExperienceLiked
  // deleteAllExperiences
  // deleteAllExperiencesImagesUrls
  // deleteAllExperiencesTags
  // deleteAllUsersLikedExperiences
  // deleteAllUsersDoneExperiences
  // deleteAllUsersToDoExperiences
  // countExperiences
  // selectExperienceById
  // watchSearchExperiencesByTitle
  // watchSearchExperiencesByDifficulty
  // watchSearchExperiencesByTags
  // watchExperiencesCreated
  // watchFeed
  // watchExperiencesDone
  // watchExperiencesLiked
}
