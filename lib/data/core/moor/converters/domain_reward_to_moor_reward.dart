import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';

MoorRewardsCompanion domainRewardToMoorReward(int experienceId, Reward reward) => MoorRewardsCompanion.insert(
      experienceId: experienceId,
      name: reward.name.getOrCrash(),
      description: reward.description.getOrCrash(),
      imageURL: reward.imageURL,
    );
