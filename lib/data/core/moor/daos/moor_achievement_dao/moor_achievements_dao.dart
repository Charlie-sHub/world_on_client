import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_achievements_dao.g.dart';

@UseDao(
  tables: [
    MoorAchievements,
    UserAchievements,
  ],
)
class MoorAchievementsDao extends DatabaseAccessor<Database> with _$MoorAchievementsDaoMixin {
  MoorAchievementsDao(Database db) : super(db);

  Stream<List<MoorAchievement>> watchUserAchievements(int userId) {
    final _contentQuery = select(userAchievements).join(
      [
        innerJoin(
          moorAchievements,
          moorAchievements.id.equalsExp(userAchievements.achievementId),
        ),
      ],
    )
      ..where((userAchievements.userId.equals(userId)))
      ..watch();
    return _contentQuery.watch().map(
          (rows) => rows
              .map(
                (row) => row.readTable(moorAchievements),
              )
              .toList(),
        );
  }
}
