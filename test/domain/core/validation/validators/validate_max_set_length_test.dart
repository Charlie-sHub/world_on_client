import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const maxLength = 4;
  const validSet = {1, 2, 3};
  const invalidSet = {1, 2, 3, 4, 5};
  test(
    "Should return validSet",
    () async {
      // Act
      final result = _act(validSet, maxLength);
      // Assert
      expect(result, validSet);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionInvalid,
        () async {
          // Arrange
          const valueFailure = ValueFailure.setExceedsLength(
            failedValue: invalidSet,
            maxLength: maxLength,
          );
          // Act
          final result = _act(invalidSet, maxLength);
          // Assert
          expect(result, valueFailure);
        },
      );
    },
  );
}

dynamic _act(Set<int> validSet, int maxLength) {
  final either = validateMaxSetLength(
    input: validSet,
    maxLength: maxLength,
  );
  final result = either.fold(
    (valueFailure) => valueFailure,
    id,
  );
  return result;
}
