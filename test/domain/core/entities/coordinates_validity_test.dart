import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

import '../../../test_descriptions.dart';

void main() {
  final validCoordinates = Coordinates.empty();
  final invalidLatitudeCoordinates = validCoordinates.copyWith(latitude: Latitude(100000));
  final invalidLongitudeCoordinates = validCoordinates.copyWith(longitude: Longitude(100000));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validCoordinates.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "$TestDescription.invalid with invalidLatitudeCoordinates",
        () async {
          // Assert
          expect(invalidLatitudeCoordinates.isValid, false);
        },
      );
      test(
        "$TestDescription.invalid with invalidLatitudeCoordinates",
        () async {
          // Assert
          expect(invalidLongitudeCoordinates.isValid, false);
        },
      );
    },
  );
}
