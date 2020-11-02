import 'package:dartz/dartz.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

Reward moorRewardToDomainReward(MoorReward _moorReward) => Reward(
      id: _moorReward.id,
      name: Name(_moorReward.name),
      description: EntityDescription(_moorReward.description),
      imageURL: _moorReward.imageURL,
      imageFile: none(),
    );
