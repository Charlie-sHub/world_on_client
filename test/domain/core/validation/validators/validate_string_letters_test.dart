import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_letters.dart';

import '../../../../constants.dart';

void main() {
  const validString = "test";
  const invalidString = "test123,";
  test(
    "Should return validString",
    () async {
      // Act
      final Object result = act(validString);
      // Assert
      expect(result, validString);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "Should return StringWithInvalidCharacters",
        () async {
          // Act
          final Object result = act(invalidString);
          // Assert
          expect(result, const ValueFailure<String>.stringWithInvalidCharacters(failedValue: invalidString));
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

Object act(String input) {
  final either = validateStringLetters(input);
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
