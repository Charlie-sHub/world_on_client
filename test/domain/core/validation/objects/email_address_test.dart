import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const invalidEmail = "test";
  const validEmail = "test@test.com";
  test(
    descriptionValid,
    () async {
      // Act
      final emailAddress = EmailAddress(validEmail);
      // Assert
      expect(emailAddress.isValid(), true);
      expect(emailAddress.getOrCrash(), validEmail);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final emailAddress = EmailAddress(invalidEmail);
      // Assert
      expect(emailAddress.isValid(), false);
    },
  );
}
