import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'daos/moor_achievements_dao/moor_achievements_dao.dart';
import 'daos/moor_comments_dao/moor_comments_dao.dart';
import 'daos/moor_experiences_dao/moor_experiences_dao.dart';
import 'daos/moor_notifications_dao/moor_notifications_dao.dart';
import 'daos/moor_objectives_dao/moor_objectives_dao.dart';
import 'daos/moor_options_dao/moor_options_dao.dart';
import 'daos/moor_rewards_dao/moor_rewards_dao.dart';
import 'daos/moor_tags_dao/moor_tags_dao.dart';
import 'daos/moor_users_dao/moor_users_dao.dart';
import 'tables/moor_achievements.dart';
import 'tables/moor_comments.dart';
import 'tables/moor_experiences.dart';
import 'tables/moor_locations.dart';
import 'tables/moor_notifications.dart';
import 'tables/moor_objectives.dart';
import 'tables/moor_options.dart';
import 'tables/moor_rewards.dart';
import 'tables/moor_tags.dart';
import 'tables/moor_users.dart';

part 'moor_database.g.dart';

@LazySingleton(env: [Environment.dev])
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
    UserBlockRelations,
    UserFollowRelations,
    UserAchievements,
    UserInterests,
    UserDoneExperiences,
    UserLikedExperiences,
    UserToDoExperiences,
    LocationExperiences,
    ExperienceImageUrls,
    ExperienceTags,
    AchievementTags,
  ],
  daos: [
    MoorAchievementsDao,
    MoorCommentsDao,
    MoorExperiencesDao,
    MoorNotificationsDao,
    MoorTagsDao,
    MoorUsersDao,
    MoorObjectivesDao,
    MoorOptionsDao,
    MoorRewardsDao,
  ],
)
class Database extends _$Database {
  Database()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite',
            logStatements: true,
          ),
        );

  Database.test(QueryExecutor executor) : super(executor);

  @override
  int get schemaVersion => 1;
}
