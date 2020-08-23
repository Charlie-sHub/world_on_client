import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_tags_dao.g.dart';

@UseDao(
  tables: [
    MoorTags,
    MoorUsers,
    ExperienceTags,
    UserInterests,
  ],
)
class MoorTagsDao extends DatabaseAccessor<Database> with _$MoorTagsDaoMixin {
  MoorTagsDao(Database db) : super(db);

  Future<int> deleteUserInterests(int userId) => (delete(userInterests)..where((interest) => interest.userId.equals(userId))).go();

  Future<int> deleteAllTags() => delete(moorTags).go();

  Future<int> countTags() async {
    final _moorTagList = await select(moorTags).get();
    return _moorTagList.length;
  }

  Future<MoorTag> selectTagById(int id) async {
    final _contentQuery = select(moorTags)
      ..where((tag) => tag.id.equals(id))
      ..limit(1)
      ..get();
    return _contentQuery.getSingle();
  }

  Future insertExperienceTag(Insertable<ExperienceTag> experienceTag) => into(experienceTags).insert(experienceTag);

  Future insertUserInterest(Insertable<UserInterest> userInterest) => into(userInterests).insert(userInterest);

  Future removeUserInterest(Insertable<UserInterest> userInterest) => delete(userInterests).delete(userInterest);

  Future<Stream<List<MoorTagWithMoorUser>>> watchSearchTagsByName(String name) async {
    final _whereExpression = moorTags.name.equals(name);
    return _createMoorTagWithMoorUserListStream(_whereExpression);
  }

  Future<Stream<List<MoorTagWithMoorUser>>> watchUserInterests(int userId) async {
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
    final _whereExpression = moorTags.id.isIn(_tagsIds);
    return _createMoorTagWithMoorUserListStream(_whereExpression);
  }

  Stream<List<MoorTagWithMoorUser>> _createMoorTagWithMoorUserListStream(Expression<bool> _whereExpression) {
    final _tagWithCreatorQuery = select(moorUsers).join(
      [
        innerJoin(
          moorTags,
          moorTags.creatorId.equalsExp(moorUsers.id),
        ),
      ],
    )..where(_whereExpression);
    return _tagWithCreatorQuery.watch().map(
          (_rows) => _rows
              .map(
                (_row) => MoorTagWithMoorUser(
                  tag: _row.readTable(moorTags),
                  creator: _row.readTable(moorUsers),
                ),
              )
              .toList(),
        );
  }
}
