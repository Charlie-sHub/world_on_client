import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart' as value_object;

import '../../../../constants.dart';

void main() {
  const validDescription = "Test Test";
  const invalidDescription = """
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    descriptionValid,
    () async {
      // Act
      final description = value_object.EntityDescription(validDescription);
      // Assert
      expect(description.isValid(), true);
      expect(description.getOrCrash(), validDescription);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final description = value_object.EntityDescription(invalidDescription);
      // Assert
      expect(description.isValid(), false);
    },
  );
}
