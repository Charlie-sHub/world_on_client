import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validLevel = 90;
  const invalidLevel = 101;
  test(
    TestDescription.valid,
    () async {
      // Act
      final level = UserLevel(validLevel);
      // Assert
      expect(level.isValid(), true);
      expect(level.getOrCrash(), validLevel);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final level = UserLevel(invalidLevel);
      // Assert
      expect(level.isValid(), false);
    },
  );
}
