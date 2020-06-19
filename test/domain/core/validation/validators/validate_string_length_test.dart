import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_length.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validString = "TestTest";
  const invalidString = "TestTestTest";
  const length = 10;
  test(
    "Should return validString",
    () async {
      // Act
      final Object result = act(validString, length);
      // Assert
      expect(result, validString);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "Should return StringExceedsLength",
        () async {
          // Act
          final Object result = act(invalidString, length);
          // Assert
          expect(result, const ValueFailure.stringExceedsLength(failedValue: invalidString));
        },
      );
      test(
        descriptionNullInput,
        () async {
          // Act
          final Object result = act(null, length);
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
    },
  );
}

Object act(String input, int length) {
  final either = validateStringLength(
    input: input,
    length: length,
  );
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
