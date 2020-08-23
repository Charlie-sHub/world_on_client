import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorAchievementWithRelations {
  final MoorAchievement achievement;
  final MoorUser creator;
  final List<MoorTagWithMoorUser> tags;

  MoorAchievementWithRelations({
    @required this.achievement,
    @required this.creator,
    @required this.tags,
  });
}
