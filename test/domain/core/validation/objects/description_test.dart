import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/description.dart' as value_object;

void main() {
  const validDescription = "Test Test";
  const invalidDescription = """
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    "Should be valid",
    () async {
      // Act
      final description = value_object.Description(validDescription);
      // Assert
      expect(description.isValid(), true);
      expect(description.getOrCrash(), validDescription);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final description = value_object.Description(invalidDescription);
      // Assert
      expect(description.isValid(), false);
    },
  );
}
