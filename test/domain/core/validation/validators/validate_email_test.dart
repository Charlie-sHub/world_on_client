import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_email.dart';

import '../../../../test_descriptions.dart';

void main() {
  const invalidEmail = "test";
  const validEmail = "test@test.com";
  test(
    "Should return back the valid email",
    () async {
      // Act
      final Object result = _act(validEmail);
      // Assert
      expect(result, validEmail);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "Should return InvalidEmail",
        () async {
          // Act
          final Object result = _act(invalidEmail);
          // Assert
          expect(result, const ValueFailure<String>.invalidEmail(failedValue: invalidEmail));
        },
      );
      test(
        TestDescription.nullInput,
        () async {
          // Act
          final Object result = _act(null);
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
    },
  );
}

Object _act(String invalidEmail) {
  final either = validateEmail(invalidEmail);
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
