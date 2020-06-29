import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_password.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validPassword = "abcd*1234";
  const invalidPassword = "a";
  test(
    "Should return the valid password",
    () async {
      // Act
      final Object result = _act(validPassword);
      // Assert
      expect(result, validPassword);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "Should return InvalidPassword",
        () async {
          // Act
          final Object result = _act(invalidPassword);
          // Assert
          expect(result, const ValueFailure<String>.invalidPassword(failedValue: invalidPassword));
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

Object _act(String input) {
  final either = validatePassword(input);
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
