import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_bounded_integer.dart';

import '../../../../constants.dart';

void main() {
  const limit = 10;
  const validInt = 9;
  const tooBigInt = 11;
  const negativeInt = -1;
  test(
    "Should return validInt",
      () async {
      // Act
      final either = validateBoundedInteger(
        limit: limit,
        input: validInt,
      );
      final Object result = getResult(either);
      // Assert
      expect(result, validInt);
    },
  );
  group(
    descriptionGroupOnFailure,
      () {
      const description = "Should return IntegerOutOfBounds";
      test(
        "$description, testing with a too big integer",
          () async {
          // Act
          final either = validateBoundedInteger(
            limit: limit,
            input: tooBigInt,
          );
          final Object result = getResult(either);
          // Assert
          expect(result, const ValueFailure.integerOutOfBounds(failedValue: tooBigInt));
        },
      );
      test(
        "$description, testing with a negative integer",
          () async {
          // Act
          final either = validateBoundedInteger(
            limit: limit,
            input: negativeInt,
          );
          final Object result = getResult(either);
          // Assert
          expect(result, const ValueFailure.integerOutOfBounds(failedValue: negativeInt));
        },
      );
      test(
        descriptionNullInput,
          () async {
          // Act
          final either = validateBoundedInteger(
            limit: limit,
            input: null,
          );
          final Object result = getResult(either);
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
    },
  );
}

Object getResult(Either<ValueFailure<int>, int> either) {
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
