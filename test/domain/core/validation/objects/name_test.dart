import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validName = "Test Test";
  const emptyName = "";
  const multiLineName = "Test \n Test";
  const tooLongName = "TestTestTestTestTestTestTestTestTestTestTestTestTestTestTest";
  test(
    descriptionValid,
    () async {
      // Act
      final name = Name(validName);
      // Assert
      expect(name.isValid(), true);
      expect(name.getOrCrash(), validName);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with tooLongName",
        () async {
          // Act
          final name = Name(tooLongName);
          // Assert
          expect(name.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with emptyName",
        () async {
          // Act
          final name = Name(emptyName);
          // Assert
          expect(name.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with multiLineName",
        () async {
          // Act
          final name = Name(multiLineName);
          // Assert
          expect(name.isValid(), false);
        },
      );
    },
  );
}
