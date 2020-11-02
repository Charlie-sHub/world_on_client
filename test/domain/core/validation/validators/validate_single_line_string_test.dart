import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_single_line_string.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validString = "Test";
  const invalidString = "Test\n Test";
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
    TestDescription.groupOnFailure,
    () {
      test(
        "Should return MultiLineString",
        () async {
          // Arrange
          const valueFailure = ValueFailure.multiLineString(failedValue: invalidString);
          // Act
          final result = _act(invalidString);
          // Assert
          expect(result, valueFailure);
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

dynamic _act(String validString) {
  final either = validateSingleLineString(validString);
  final result = either.fold(
    (valueFailure) => valueFailure,
    id,
  );
  return result;
}
