import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_same_string.dart';

import '../../../../test_descriptions.dart';

void main() {
  const string = "test";
  const validString = "test";
  const invalidString = "tests";
  test(
    "Should return back the string",
    () async {
      // Act
      final either = validateSameString(string, validString);
      final result = either.fold(
        (valueFailure) => valueFailure,
        id,
      );
      // Assert
      expect(result, string);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "Should return stringMismatch",
        () async {
          // Act
          final either = validateSameString(string, invalidString);
          final result = either.fold(
            (valueFailure) => valueFailure,
            id,
          );
          // Assert
          expect(result, const ValueFailure<String>.stringMismatch(failedValue: invalidString));
        },
      );
      test(
        TestDescription.nullInput,
        () async {
          // Act
          final either = validateSameString(string, null);
          final result = either.fold(
            (valueFailure) => valueFailure,
            id,
          );
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
    },
  );
}
