import 'dart:io';

import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

Reward getValidReward() {
  return Reward(
    id: 1,
    name: Name("Curabitur lectus"),
    description: EntityDescription("Ut fermentum libero id nisi rhoncus."),
    imageURL: "testReward.jpg",
    imageFile: File(""),
  );
}
