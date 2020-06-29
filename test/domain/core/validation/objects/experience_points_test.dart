import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validPoints = 100;
  const invalidPoints = 100000000;
  test(
    TestDescription.valid,
    () async {
      // Act
      final experiencePoints = ExperiencePoints(validPoints);
      // Assert
      expect(experiencePoints.isValid(), true);
      expect(experiencePoints.getOrCrash(), validPoints);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final experiencePoints = ExperiencePoints(invalidPoints);
      // Assert
      expect(experiencePoints.isValid(), false);
    },
  );
}
