import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_past_date.dart';

import '../../../../test_descriptions.dart';

void main() {
  final validDate = DateTime.now();
  final invalidDate = DateTime.now().add(const Duration(days: 50));
  test(
    "Should return validDate",
    () async {
      // Act
      final Object result = _act(validDate);
      // Assert
      expect(result, validDate);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "Should return InvalidDate",
        () async {
          // Act
          final Object result = _act(invalidDate);
          // Assert
          expect(result, ValueFailure.invalidDate(failedValue: invalidDate));
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

Object _act(DateTime input) {
  final either = validatePastDate(input);
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
