import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

void main() {
  const validPassword = "abcd*1234";
  const invalidPassword = "a";
  test(
    "Should be valid",
    () async {
      // Act
      final password = Password(validPassword);
      // Assert
      expect(password.isValid(), true);
      expect(password.getOrCrash(), validPassword);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final password = Password(invalidPassword);
      // Assert
      expect(password.isValid(), false);
    },
  );
}
