import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/daos/moor_experiences_dao/moor_experience_with_relations.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

Experience moorExperienceToDomainExperience(MoorExperienceWithRelations _moorExperienceWithRelations) => Experience.empty().copyWith(
      id: _moorExperienceWithRelations.experience.id,
      title: Name(_moorExperienceWithRelations.experience.title),
      description: EntityDescription(_moorExperienceWithRelations.experience.description),
      imageURLs: _moorExperienceWithRelations.imageUrls.toSet(),
      coordinates: Coordinates(
        latitude: Latitude(_moorExperienceWithRelations.experience.latitude),
        longitude: Longitude(_moorExperienceWithRelations.experience.longitude),
      ),
      creator: moorUserToDomainUser(_moorExperienceWithRelations.creator),
      difficulty: Difficulty(_moorExperienceWithRelations.experience.difficulty),
      creationDate: PastDate(_moorExperienceWithRelations.experience.creationDate),
      modificationDate: PastDate(_moorExperienceWithRelations.experience.modificationDate),
      objectives: ObjectiveSet(
        _moorExperienceWithRelations.objectives
            .map(
              (_moorObjective) => Objective(
                id: _moorObjective.id,
                description: EntityDescription(_moorObjective.description),
                coordinates: Coordinates(
                  latitude: Latitude(_moorObjective.latitude),
                  longitude: Longitude(_moorObjective.longitude),
                ),
                imageURL: _moorObjective.imageURL,
                imageFile: none(),
              ),
            )
            .toSet()
            .toImmutableSet(),
      ),
      rewards: RewardSet(
        _moorExperienceWithRelations.rewards
            .map(
              (_moorReward) => Reward(
                id: _moorReward.id,
                name: Name(_moorReward.name),
                description: EntityDescription(_moorReward.description),
                imageURL: _moorReward.imageURL,
                imageFile: none(),
              ),
            )
            .toSet()
            .toImmutableSet(),
      ),
      tags: TagSet(
        _moorExperienceWithRelations.tags
            .map(
              (_moorTagWithUser) => Tag(
                id: _moorTagWithUser.tag.id,
                name: Name(_moorTagWithUser.tag.name),
                creator: moorUserToDomainUser(_moorTagWithUser.creator),
                creationDate: PastDate(_moorTagWithUser.tag.creationDate),
                modificationDate: PastDate(_moorTagWithUser.tag.modificationDate),
              ),
            )
            .toSet()
            .toImmutableSet(),
      ),
    );
