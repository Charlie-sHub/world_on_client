import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_past_date.dart';

import '../../../../constants.dart';

void main() {
  final validDate = DateTime.now().subtract(const Duration(days: 50));
  final invalidDate = DateTime.now().add(const Duration(days: 50));
  test(
    "Should return validDate",
    () async {
      // Act
      final Object result = act(validDate);
      // Assert
      expect(result, validDate);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "Should return InvalidDate",
        () async {
          // Act
          final Object result = act(invalidDate);
          // Assert
          expect(result, ValueFailure.invalidDate(failedValue: invalidDate));
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

Object act(DateTime input) {
  final either = validatePastDate(input);
  final result = either.fold(
    (valueFailure) => valueFailure,
    (validInput) => validInput,
  );
  return result;
}
