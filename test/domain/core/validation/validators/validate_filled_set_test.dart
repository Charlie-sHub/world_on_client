import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_filled_set.dart';

import '../../../../constant_descriptions.dart';

void main() {
  final Set invalidSet = {};
  final Set validSet = {
    1,
    2,
    3,
  };

  group(
    descriptionGroupOnSuccess,
    () {
      test(
        "Should return validSet",
        () async {
          // Act
          final result = _act(validSet);
          // Assert
          expect(result, validSet);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionNullInput,
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
          expect(result, ValueFailure.emptySet(set: invalidSet));
        },
      );
    },
  );
}

dynamic _act(Set set) {
  final either = validateFilledSet(set);
  final result = either.fold((valueFailure) => valueFailure, id);
  return result;
}
