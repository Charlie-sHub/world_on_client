import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validDescription = "Test Test";
  const emptyDescription = "";
  const tooLongDescription = """
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest
TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest""";
  test(
    TestDescription.valid,
    () async {
      // Act
      final description = EntityDescription(validDescription);
      // Assert
      expect(description.isValid(), true);
      expect(description.getOrCrash(), validDescription);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with tooLongDescription",
        () async {
          // Act
          final description = EntityDescription(tooLongDescription);
          // Assert
          expect(description.isValid(), false);
        },
      );
      test(
        "${TestDescription.invalid} with emptyDescription",
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
