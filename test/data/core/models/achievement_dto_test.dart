import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/models/achievement/achievement_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final achievement = getValidAchievement();
      // Act
      final achievementDto = AchievementDto.fromDomain(achievement);
      final result = achievementDto.toDomain();
      // Assert
      expect(result, achievement);
    },
  );
}
