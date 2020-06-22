import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validDescription = "Test Test";
  const emptyDescription = "";
  const tooLongDescription = """
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    descriptionValid,
    () async {
      // Act
      final description = EntityDescription(validDescription);
      // Assert
      expect(description.isValid(), true);
      expect(description.getOrCrash(), validDescription);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with tooLongDescription",
        () async {
          // Act
          final description = EntityDescription(tooLongDescription);
          // Assert
          expect(description.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with emptyDescription",
        () async {
          // Act
          final description = EntityDescription(emptyDescription);
          // Assert
          expect(description.isValid(), false);
        },
      );
    },
  );
}
