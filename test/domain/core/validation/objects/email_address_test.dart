import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';

void main() {
  const invalidEmail = "test";
  const validEmail = "test@test.com";
  test(
    "Should be valid",
    () async {
      // Act
      final emailAddress = EmailAddress(validEmail);
      // Assert
      expect(emailAddress.isValid(), true);
      expect(emailAddress.getOrCrash(), validEmail);
    },
  );
  test(
    "Should be invalid",
    () async {
      // Act
      final emailAddress = EmailAddress(invalidEmail);
      // Assert
      expect(emailAddress.isValid(), false);
    },
  );
}
