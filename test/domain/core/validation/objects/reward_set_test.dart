import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/Reward.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';

import '../../../../constant_descriptions.dart';

void main() {
  final Set<Reward> validSet = {
    const Reward(
      id: null,
      description: null,
      name: null,
      imageURL: null,
    ),
  };
  final Set<Reward> tooBigSet = _fillSet();
  test(
    descriptionValid,
    () async {
      // Act
      final rewards = RewardSet(validSet);
      // Assert
      expect(rewards.isValid(), true);
      expect(rewards.getOrCrash(), validSet);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with tooBigSet",
        () async {
          // Act
          final rewards = RewardSet(tooBigSet);
          // Assert
          expect(rewards.isValid(), false);
        },
      );
    },
  );
}

// Maybe there's a better way to fill the Set
Set<Reward> _fillSet() {
  return {
    const Reward(
      id: 1,
      description: null,
      name: null,
      imageURL: null,
    ),
    const Reward(
      id: 2,
      description: null,
      name: null,
      imageURL: null,
    ),
    const Reward(
      id: 3,
      description: null,
      name: null,
      imageURL: null,
    ),
    const Reward(
      id: 4,
      description: null,
      name: null,
      imageURL: null,
    ),
    const Reward(
      id: 5,
      description: null,
      name: null,
      imageURL: null,
    ),
    const Reward(
      id: 6,
      description: null,
      name: null,
      imageURL: null,
    ),
  };
}
