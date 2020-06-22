import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_string_not_empty.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validString = "Test";
  const invalidString = "";
  test(
    "Should return validString",
    () async {
      // Act
      final result = _act(validString);
      // Assert
      expect(result, validString);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "Should return EmptyString",
        () async {
          // Arrange
          const valueFailure = ValueFailure.emptyString(failedValue: invalidString);
          // Act
          final result = _act(invalidString);
          // Assert
          expect(result, valueFailure);
        },
      );
      test(
        descriptionNullInput,
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

dynamic _act(String validString) {
  final either = validateStringNotEmpty(validString);
  final result = either.fold(
    (valueFailure) => valueFailure,
    id,
  );
  return result;
}
