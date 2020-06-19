import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validName = "Test Test";
  const invalidName = "TestTestTestTestTestTestTestTestTestTestTestTestTestTestTest";
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
  test(
    descriptionInvalid,
    () async {
      // Act
      final name = Name(invalidName);
      // Assert
      expect(name.isValid(), false);
    },
  );
}
