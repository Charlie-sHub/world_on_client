import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validPassword = "abcd*1234";
  const invalidPassword = "a";
  test(
    descriptionValid,
    () async {
      // Act
      final password = Password(validPassword);
      // Assert
      expect(password.isValid(), true);
      expect(password.getOrCrash(), validPassword);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final password = Password(invalidPassword);
      // Assert
      expect(password.isValid(), false);
    },
  );
}
