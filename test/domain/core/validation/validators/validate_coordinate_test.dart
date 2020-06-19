import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/validators/validate_coordinate.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const latitudeLimit = 90.0;
  const longitudeLimit = 180.0;
  const invalidLatitude = 100.0;
  const validLatitude = 45.0;
  const invalidLongitude = 190.0;
  const validLongitude = 80.0;
  group(
    descriptionGroupOnSuccess,
    () {
      test(
        "Should return validLatitude",
        () async {
          // Act
          final result = _act(latitudeLimit, validLatitude);
          // Assert
          expect(result, validLatitude);
        },
      );
      test(
        "Should return validLongitude",
        () async {
          // Act
          final result = _act(longitudeLimit, validLongitude);
          // Assert
          expect(result, validLongitude);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      const _description = "Should return InvalidCoordinate";
      test(
        "$_description, testing with invalidLatitude",
        () async {
          // Act
          final result = _act(latitudeLimit, invalidLatitude);
          // Assert
          expect(result, const ValueFailure.invalidCoordinate(coordinate: invalidLatitude));
        },
      );
      test(
        "$_description, testing with invalidLongitude",
        () async {
          // Act
          final result = _act(longitudeLimit, invalidLongitude);
          // Assert
          expect(result, const ValueFailure.invalidCoordinate(coordinate: invalidLongitude));
        },
      );
      test(
        descriptionNullInput,
        () async {
          // Act
          final result = _act(longitudeLimit, null);
          // Assert
          expect(result, const ValueFailure.nullInput());
        },
      );
    },
  );
}

dynamic _act(double limit, double input) {
  final either = validateCoordinate(
    limit: limit,
    input: input,
  );
  final result = either.fold((valueFailure) => valueFailure, id);
  return result;
}
