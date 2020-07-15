import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/password_confirmator.dart';

import '../../../../test_descriptions.dart';

void main() {
  const password = "abcd*1234";
  const validPasswordConfirmation = "abcd*1234";
  const invalidPasswordConfirmation = "abcd*123";
  test(
    TestDescription.valid,
    () async {
      // Act
      final passwordConfirmation = PasswordConfirmator(
        password: password,
        confirmation: validPasswordConfirmation,
      );
      // Assert
      expect(passwordConfirmation.isValid(), true);
      expect(passwordConfirmation.getOrCrash(), password);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final passwordConfirmation = PasswordConfirmator(
        password: password,
        confirmation: invalidPasswordConfirmation,
      );
      // Assert
      expect(passwordConfirmation.isValid(), false);
    },
  );
}
