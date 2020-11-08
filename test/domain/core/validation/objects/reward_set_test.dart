import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';

import '../../../../test_descriptions.dart';

void main() {
  final validSet = KtSet.of(Reward.empty());
  final tooBigSet = _fillSet();
  test(
    TestDescription.valid,
    () async {
      // Act
      final rewards = RewardSet(validSet);
      // Assert
      expect(rewards.isValid(), true);
      expect(rewards.getOrCrash(), validSet);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with tooBigSet",
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
KtSet<Reward> _fillSet() => {
      Reward.empty(),
      Reward.empty(),
      Reward.empty(),
      Reward.empty(),
      Reward.empty(),
      Reward.empty(),
    }.toImmutableSet();
