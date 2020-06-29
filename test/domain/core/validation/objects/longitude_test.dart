import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

import '../../../../test_descriptions.dart';

void main() {
  const invalidLongitude = 200.0;
  const validLongitude = 120.0;
  test(
    TestDescription.valid,
    () async {
      // Act
      final longitude = Longitude(validLongitude);
      // Assert
      expect(longitude.isValid(), true);
      expect(longitude.getOrCrash(), validLongitude);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final longitude = Longitude(invalidLongitude);
      // Assert
      expect(longitude.isValid(), false);
    },
  );
}
