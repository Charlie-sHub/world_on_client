import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_email.dart';

import '../../../../constants.dart';

void main() {
  const invalidEmail = "a";
  const validEmail = "test@test.com";
  test(
    "Should return back the valid email",
    () async {
      // Act
      final Object result = act(validEmail);
      // Assert
      expect(result, validEmail);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "Should return InvalidEmail",
        () async {
          // Act
          final Object result = act(invalidEmail);
          // Assert
          expect(result, const ValueFailure<String>.invalidEmail(failedValue: invalidEmail));
        },
      );
      test(
        descriptionNullInput,
        () async {
          // Act
          final Object result = act(null);
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
    },
  );
}

Object act(String invalidEmail) {
  final either = validateEmail(invalidEmail);
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
