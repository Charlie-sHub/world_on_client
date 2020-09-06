import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';

MoorAchievementsCompanion domainAchievementToMoorAchievement(Achievement achievement) => MoorAchievementsCompanion.insert(
      name: achievement.name.getOrCrash(),
      description: achievement.description.getOrCrash(),
      imageURL: achievement.imageURL,
      type: achievement.type,
      requisite: achievement.requisite,
      experiencePoints: achievement.experiencePoints.getOrCrash(),
      creationDate: achievement.creationDate.getOrCrash(),
      modificationDate: achievement.modificationDate.getOrCrash(),
      creatorId: achievement.creatorId,
    );
