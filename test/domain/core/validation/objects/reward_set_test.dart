import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';

import '../../../../constant_descriptions.dart';

void main() {
  final Set<Reward> validSet = {Reward.empty()};
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
    Reward.empty().copyWith(id: 1),
    Reward.empty().copyWith(id: 2),
    Reward.empty().copyWith(id: 3),
    Reward.empty().copyWith(id: 4),
    Reward.empty().copyWith(id: 5),
    Reward.empty().copyWith(id: 6),
  };
}
