import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

Reward getValidReward() {
  return Reward(
    name: Name("Curabitur lectus"),
    description: EntityDescription("Ut fermentum libero id nisi rhoncus."),
    imageURL: "testReward.jpg",
  );
}
