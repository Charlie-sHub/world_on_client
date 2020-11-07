import 'package:dartz/dartz.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

Reward getValidReward() {
  return Reward(
    id: UniqueId(),
    name: Name("Curabitur lectus"),
    description: EntityDescription("Ut fermentum libero id nisi rhoncus."),
    imageURL: Assets.rewardPlaceholder,
    imageFile: none(),
  );
}
