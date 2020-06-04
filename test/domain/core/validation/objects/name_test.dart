import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

void main() {
  const validName = "Test Test";
  const invalidName = "TestTestTestTestTestTestTestTestTestTestTestTestTestTestTest";
  test(
    "Should be valid",
    () async {
      // Act
      final name = Name(validName);
      // Assert
      expect(name.isValid(), true);
      expect(name.getOrCrash(), validName);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final name = Name(invalidName);
      // Assert
      expect(name.isValid(), false);
    },
  );
}
