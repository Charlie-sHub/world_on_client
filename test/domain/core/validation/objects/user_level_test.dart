import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

void main() {
  const validLevel = 90;
  const invalidLevel = 101;
  test(
    "Should be valid",
    () async {
      // Act
      final level = UserLevel(validLevel);
      // Assert
      expect(level.isValid(), true);
      expect(level.getOrCrash(), validLevel);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final level = UserLevel(invalidLevel);
      // Assert
      expect(level.isValid(), false);
    },
  );
}
