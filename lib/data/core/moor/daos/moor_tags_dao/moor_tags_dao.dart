import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_achievements.dart';
import '../../tables/moor_experiences.dart';
import '../../tables/moor_tags.dart';
import '../../tables/moor_users.dart';

part 'moor_tags_dao.g.dart';

@UseDao(
  tables: [
    MoorTags,
    MoorUsers,
    ExperienceTags,
    UserInterests,
    AchievementTags,
  ],
)
class MoorTagsDao extends DatabaseAccessor<Database> with _$MoorTagsDaoMixin {
  MoorTagsDao(Database db) : super(db);

  Future<int> countTags() async {
    final _moorTagList = await select(moorTags).get();
    return _moorTagList.length;
  }

  Future<int> insertTag(Insertable<MoorTag> tag) => into(moorTags).insert(tag);

  Future updateTag(Insertable<MoorTag> tag) => update(moorTags).replace(tag);

  Future<int> removeTag(Insertable<MoorTag> tag) => delete(moorTags).delete(tag);

  Future<int> insertExperienceTag(Insertable<ExperienceTag> experienceTag) => into(experienceTags).insert(
        experienceTag,
        mode: InsertMode.replace,
      );

  Future<int> insertAchievementTag(Insertable<AchievementTag> achievementTag) => into(achievementTags).insert(
        achievementTag,
        mode: InsertMode.replace,
      );

  Future<int> insertUserInterest(Insertable<UserInterest> userInterest) => into(userInterests).insert(
        userInterest,
        mode: InsertMode.replace,
      );

  Future<int> deleteUserInterests(String userId) => (delete(userInterests)..where((interest) => interest.userId.equals(userId))).go();

  Future<int> deleteAllTags() => delete(moorTags).go();

  Future<int> deleteAllUsersInterests() => delete(userInterests).go();

  Future<int> deleteAllExperiencesTags() => delete(experienceTags).go();

  Future<int> deleteAllAchievementsTags() => delete(achievementTags).go();

  Future<int> removeUserInterest(Insertable<UserInterest> userInterest) => delete(userInterests).delete(userInterest);

  Future<MoorTag> getTagById(String id) async {
    final _contentQuery = select(moorTags)..where((_tags) => _tags.id.equals(id));
    return _contentQuery.getSingle();
  }

  Stream<List<MoorTag>> watchSearchTagsByName(String name) async* {
    final _tagsQuery = select(moorTags)..where((_moorTags) => _moorTags.name.contains(name));
    yield* _tagsQuery.watch();
  }

  Stream<List<MoorTag>> watchUserInterests(String userId) async* {
    final _userInterestsQuery = select(userInterests).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(userInterests.tagId),
        ),
      ],
    )..where((userInterests.userId.equals(userId)));
    final _tagsIds = await _userInterestsQuery
        .watch()
        .map(
          (_rows) => _rows
              .map(
                (_row) => _row.readTable(moorTags).id,
              )
              .toList(),
        )
        .first;
    final _tagsQuery = select(moorTags)..where((_moorTags) => _moorTags.id.isIn(_tagsIds));
    yield* _tagsQuery.watch();
  }
}
