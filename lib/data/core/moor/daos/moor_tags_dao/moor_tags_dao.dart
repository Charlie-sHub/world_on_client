import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_tags_dao.g.dart';

@UseDao(
  tables: [
    MoorTags,
    ExperienceTags,
    UserInterests,
  ],
)
class MoorTagsDao extends DatabaseAccessor<Database> with _$MoorTagsDaoMixin {
  MoorTagsDao(Database db) : super(db);

  Future deleteUserInterests(int userId) => (delete(userInterests)..where((interest) => interest.userId.equals(userId))).go();

  Future<MoorTag> selectTagById(int id) async {
    final _contentQuery = select(moorTags)
      ..where((tag) => tag.id.equals(id))
      ..limit(1)
      ..get();
    return _contentQuery.getSingle();
  }

  Future insertExperienceTag(Insertable<ExperienceTag> experienceTag) => into(experienceTags).insert(experienceTag);

  Future insertUserInterest(Insertable<UserInterest> userInterest) => into(userInterests).insert(userInterest);

  Stream<List<MoorTag>> watchSearchTagsByName(String name) {
    final _contentQuery = select(moorTags)..where((moorTags) => moorTags.name.equals(name));
    return _contentQuery.watch();
  }

  Future<List<MoorTag>> selectExperienceTags(int experienceId) async {
    final _contentQuery = select(experienceTags).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(experienceTags.tagId),
        ),
      ],
    )..where((experienceTags.experienceId.equals(experienceId)));
    final _contentStream = _contentQuery.watch().map(
          (rows) => rows
              .map(
                (row) => row.readTable(moorTags),
              )
              .toList(),
        );
    return _contentStream.first;
  }

  Stream<List<MoorTag>> watchUserInterests(int userId) {
    final _contentQuery = select(userInterests).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(userInterests.tagId),
        ),
      ],
    )..where((userInterests.userId.equals(userId)));
    return _contentQuery.watch().map(
          (rows) => rows
              .map(
                (row) => row.readTable(moorTags),
              )
              .toList(),
        );
  }
}
