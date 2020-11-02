import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorAchievementWithRelations {
  final MoorAchievement achievement;
  final List<MoorTag> tags;

  MoorAchievementWithRelations({
    @required this.achievement,
    @required this.tags,
  });
}
