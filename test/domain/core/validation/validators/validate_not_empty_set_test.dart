import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_not_empty_set.dart';

import '../../../../test_descriptions.dart';

void main() {
  const invalidSet = KtSet.empty();
  final validSet = KtSet.of(1, 2, 3);
  test(
    "Should return validSet",
    () async {
      // Act
      final result = _act(validSet);
      // Assert
      expect(result, validSet);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.nullInput,
        () async {
          // Act
          final result = _act(null);
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
      test(
        "The result should be invalid",
        () async {
          // Act
          final result = _act(invalidSet);
          // Assert
          expect(result, const ValueFailure.emptySet(failedValue: invalidSet));
        },
      );
    },
  );
}

dynamic _act(KtSet set) {
  final either = validateNotEmptySet(set);
  final result = either.fold((valueFailure) => valueFailure, id);
  return result;
}
