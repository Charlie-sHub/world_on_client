import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_max_set_length.dart';

import '../../../../test_descriptions.dart';

void main() {
  const maxLength = 4;
  final validSet = KtSet.of(1, 2, 3);
  final invalidSet = KtSet.of(1, 2, 3, 4, 5);
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
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.invalid,
        () async {
          // Arrange
          final valueFailure = ValueFailure.setExceedsLength(
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

dynamic _act(KtSet<int> set, int maxLength) {
  final either = validateMaxSetLength(
    input: set,
    maxLength: maxLength,
  );
  final result = either.fold(
    (valueFailure) => valueFailure,
    id,
  );
  return result;
}
