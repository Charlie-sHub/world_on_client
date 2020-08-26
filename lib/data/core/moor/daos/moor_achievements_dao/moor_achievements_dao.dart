import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_achievements.dart';
import '../../tables/moor_tags.dart';
import '../../tables/moor_users.dart';
import 'moor_achievement_with_tags.dart';

part 'moor_achievements_dao.g.dart';

@UseDao(
  tables: [
    MoorAchievements,
    MoorTags,
    MoorUsers,
    UserAchievements,
    AchievementTags,
  ],
)
class MoorAchievementsDao extends DatabaseAccessor<Database> with _$MoorAchievementsDaoMixin {
  MoorAchievementsDao(Database db) : super(db);

  Future<int> insertAchievement(Insertable<MoorAchievement> achievement) => into(moorAchievements).insert(achievement);

  Future insertUserAchievement(Insertable<UserAchievement> userAchievement) => into(userAchievements).insert(userAchievement);

  Future<int> countAchievements() async {
    final _moorAchievementList = await select(moorAchievements).get();
    return _moorAchievementList.length;
  }

  Future<MoorAchievement> getAchievementById(int id) async {
    final _contentQuery = select(moorAchievements)..where((_achievements) => _achievements.id.equals(id));
    return _contentQuery.getSingle();
  }

  Future<int> deleteAllAchievements() => delete(moorAchievements).go();

  Future<int> deleteAllAchievementsTags() => delete(achievementTags).go();

  Future<int> deleteAllUsersAchievements() => delete(userAchievements).go();

  Stream<List<MoorAchievementWithRelations>> watchUserAchievements(int userId) async* {
    final _userAchievementsQuery = select(userAchievements).join(
      [
        innerJoin(
          moorAchievements,
          moorAchievements.id.equalsExp(userAchievements.achievementId),
        ),
      ],
    )
      ..where(userAchievements.userId.equals(userId));
    final _usersAchievementsIds = await _userAchievementsQuery
      .watch()
        .map(
          (_rows) => _rows.map(
            (_row) => _row.readTable(moorAchievements).id,
          ),
        )
        .first;
    final _achievementsWithCreatorJoin = select(moorAchievements).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(moorAchievements.creatorId),
        ),
      ],
    )..where(moorAchievements.id.isIn(_usersAchievementsIds));
    final _achievementsWithTagsJoin = select(achievementTags).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(achievementTags.tagId),
        ),
      ],
    )..where(achievementTags.achievementId.isIn(_usersAchievementsIds));
    final _tagsWithCreatorsListStream = select(moorUsers)
        .join(
          [
            innerJoin(
              moorTags,
              moorTags.creatorId.equalsExp(moorUsers.id),
            ),
          ],
        )
        .watch()
        .map(
          (_rows) => _rows
              .map(
                (_row) => MoorTagWithMoorUser(
                  tag: _row.readTable(moorTags),
                  creator: _row.readTable(moorUsers),
                ),
              )
              .toList(),
        );
    yield* Rx.combineLatest3(
      _achievementsWithCreatorJoin.watch(),
      _achievementsWithTagsJoin.watch(),
      _tagsWithCreatorsListStream,
        (List<TypedResult> _achievementsWithCreatorRows,
        List<TypedResult> _achievementsWithTagsRows,
        List<MoorTagWithMoorUser> _moorTagsWithCreators,) {
        return _achievementsWithCreatorRows.map(
            (_achievementsWithCreatorRow) {
            final _achievement = _achievementsWithCreatorRow.readTable(moorAchievements);
            final _creator = _achievementsWithCreatorRow.readTable(moorUsers);
            final _tagsWithCreators = List<MoorTagWithMoorUser>.from(_moorTagsWithCreators);
            final _achievementMoorTagIdList = _achievementsWithTagsRows
              .map(
                (_row) =>
              _row
                .readTable(moorTags)
                .id,
            )
              .toList();
            _tagsWithCreators.removeWhere(
                (_moorTagWithUser) => !_achievementMoorTagIdList.contains(_moorTagWithUser.tag.id),
            );
            return MoorAchievementWithRelations(
              achievement: _achievement,
              creator: _creator,
              tags: _tagsWithCreators,
            );
          },
        ).toList();
      },
    );
  }
}
