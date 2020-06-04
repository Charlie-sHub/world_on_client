import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';

void main() {
  const validPoints = 100;
  const invalidPoints = 100000000;
  test(
    "Should be valid",
    () async {
      // Act
      final experiencePoints = ExperiencePoints(validPoints);
      // Assert
      expect(experiencePoints.isValid(), true);
      expect(experiencePoints.getOrCrash(), validPoints);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final experiencePoints = ExperiencePoints(invalidPoints);
      // Assert
      expect(experiencePoints.isValid(), false);
    },
  );
}
