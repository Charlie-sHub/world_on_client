import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';
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

  Future insertUserAchievement(Insertable<UserAchievement> userAchievement) => into(userAchievements).insert(
        userAchievement,
        mode: InsertMode.replace,
      );

  Future<int> countAchievements() async {
    final _moorAchievementList = await select(moorAchievements).get();
    return _moorAchievementList.length;
  }

  Future<MoorAchievement> getAchievementById(int id) async {
    final _contentQuery = select(moorAchievements)..where((_achievements) => _achievements.id.equals(id));
    return _contentQuery.getSingle();
  }

  Future<int> deleteAllAchievements() => delete(moorAchievements).go();

  Future<int> deleteAllUsersAchievements() => delete(userAchievements).go();

  Stream<List<MoorAchievementWithRelations>> watchUserAchievements(int userId) async* {
    final _userAchievementsQuery = select(userAchievements).join(
      [
        innerJoin(
          moorAchievements,
          moorAchievements.id.equalsExp(userAchievements.achievementId),
        ),
      ],
    )..where(userAchievements.userId.equals(userId));
    final _usersAchievementsIds = await _userAchievementsQuery
        .watch()
        .map(
          (_rows) => _rows.map(
            (_row) => _row.readTable(moorAchievements).id,
          ),
        )
        .first;
    final _achievementsQuery = select(moorAchievements)..where((_achievements) => _achievements.id.isIn(_usersAchievementsIds));
    final _achievementsWithTagsJoin = select(achievementTags).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(achievementTags.tagId),
        ),
      ],
    )..where(achievementTags.achievementId.isIn(_usersAchievementsIds));
    final _tagsQueryStream = select(moorTags).watch();
    yield* Rx.combineLatest3(
      _achievementsQuery.watch(),
      _achievementsWithTagsJoin.watch(),
      _tagsQueryStream,
      (
        List<MoorAchievement> _achievements,
        List<TypedResult> _achievementsWithTagsRows,
        List<MoorTag> _tags,
      ) {
        return _achievements.map(
          (_achievement) {
            final _achievementTags = List<MoorTag>.from(_tags);
            final _achievementMoorTagIdList = _achievementsWithTagsRows
                .map(
                  (_row) => _row.readTable(moorTags).id,
                )
                .toList();
            _achievementTags.removeWhere(
              (_tag) => !_achievementMoorTagIdList.contains(_tag.id),
            );
            return MoorAchievementWithRelations(
              achievement: _achievement,
              tags: _achievementTags,
            );
          },
        ).toList();
      },
    );
  }
}
