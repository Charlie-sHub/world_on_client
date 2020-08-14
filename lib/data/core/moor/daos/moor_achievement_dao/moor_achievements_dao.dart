import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_achievements_dao.g.dart';

@UseDao(tables: [MoorAchievements])
class MoorAchievementsDao extends DatabaseAccessor<Database> with _$MoorAchievementsDaoMixin {
  MoorAchievementsDao(Database db) : super(db);

  Stream<List<MoorAchievement>> watchUserAchievements(MoorUser user) {
    // TODO: Implement this method
    return null;
  }
}
