import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_reward.dart';
import 'package:worldon/data/core/models/reward/reward_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final reward = getValidReward();
      // Act
      final rewardDto = RewardDto.fromDomain(reward);
      final result = rewardDto.toDomain();
      // Assert
      expect(result, reward);
    },
  );
}
