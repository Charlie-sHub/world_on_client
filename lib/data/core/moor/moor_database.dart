import 'package:moor/moor.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

import 'daos/moor_achievement_dao/moor_achievements_dao.dart';
import 'daos/moor_comments_dao/moor_comments_dao.dart';
import 'daos/moor_experiences_dao/moor_experiences_dao.dart';
import 'daos/moor_notifications_dao/moor_notifications_dao.dart';
import 'daos/moor_tags_dao/moor_tags_dao.dart';
import 'daos/moor_users_dao/moor_users_dao.dart';

part 'moor_achievements.dart';
part 'moor_comments.dart';
part 'moor_database.g.dart';
part 'moor_experiences.dart';
part 'moor_locations.dart';
part 'moor_notifications.dart';
part 'moor_objectives.dart';
part 'moor_options.dart';
part 'moor_rewards.dart';
part 'moor_tags.dart';

part 'moor_tags.dart';

part 'moor_users.dart';

@UseMoor(
  tables: [
    MoorAchievements,
    MoorComments,
    MoorExperiences,
    MoorLocations,
    MoorNotifications,
    MoorObjectives,
    MoorOptions,
    MoorRewards,
    MoorTags,
    MoorUsers,
  ],
  daos: [
    MoorAchievementsDao,
    MoorCommentsDao,
    MoorExperiencesDao,
    MoorNotificationsDao,
    MoorTagsDao,
    MoorUsersDao,
  ],
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}
