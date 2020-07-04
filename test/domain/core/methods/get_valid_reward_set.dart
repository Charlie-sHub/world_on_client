import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';

RewardSet getValidRewardSet() {
  return RewardSet(
    KtSet.of(
      Reward.empty().copyWith(
        name: Name("Test"),
        description: EntityDescription("Testing"),
      ),
    ),
  );
}
