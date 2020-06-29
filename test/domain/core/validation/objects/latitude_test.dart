import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';

import '../../../../test_descriptions.dart';

void main() {
  const invalidLatitude = 100.0;
  const validLatitude = 45.0;
  test(
    TestDescription.valid,
    () async {
      // Act
      final latitude = Latitude(validLatitude);
      // Assert
      expect(latitude.isValid(), true);
      expect(latitude.getOrCrash(), validLatitude);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final latitude = Latitude(invalidLatitude);
      // Assert
      expect(latitude.isValid(), false);
    },
  );
}
