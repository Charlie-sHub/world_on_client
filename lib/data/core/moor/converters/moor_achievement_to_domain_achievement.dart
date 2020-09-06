import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/data/core/moor/converters/moor_tag_to_domain_tag.dart';
import 'package:worldon/data/core/moor/daos/moor_achievements_dao/moor_achievement_with_tags.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

Achievement moorAchievementToDomainAchievement(MoorAchievementWithRelations _moorAchievementWithRelations) => Achievement(
      id: _moorAchievementWithRelations.achievement.id,
      name: Name(_moorAchievementWithRelations.achievement.name),
      description: EntityDescription(_moorAchievementWithRelations.achievement.description),
      imageURL: _moorAchievementWithRelations.achievement.imageURL,
      imageFile: none(),
      type: _moorAchievementWithRelations.achievement.type,
      requisite: _moorAchievementWithRelations.achievement.requisite,
      experiencePoints: ExperiencePoints(_moorAchievementWithRelations.achievement.experiencePoints),
      creatorId: _moorAchievementWithRelations.achievement.creatorId,
      creationDate: PastDate(_moorAchievementWithRelations.achievement.creationDate),
      modificationDate: PastDate(_moorAchievementWithRelations.achievement.modificationDate),
      tags: TagSet(
        _moorAchievementWithRelations.tags
            .map(
              (_moorTag) => moorTagToDomainTag(_moorTag),
            )
            .toImmutableSet(),
      ),
    );
