import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';

MoorRewardsCompanion domainRewardToMoorReward(String experienceId, Reward reward) => MoorRewardsCompanion.insert(
      id: reward.id.getOrCrash(),
      experienceId: experienceId,
      name: reward.name.getOrCrash(),
      description: reward.description.getOrCrash(),
      imageURL: reward.imageURL,
    );
