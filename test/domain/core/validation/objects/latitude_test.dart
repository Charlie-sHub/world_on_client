import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';

import '../../../../constants.dart';

void main() {
  const invalidLatitude = 100.0;
  const validLatitude = 45.0;
  test(
    descriptionValid,
    () async {
      // Act
      final latitude = Latitude(validLatitude);
      // Assert
      expect(latitude.isValid(), true);
      expect(latitude.getOrCrash(), validLatitude);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final latitude = Latitude(invalidLatitude);
      // Assert
      expect(latitude.isValid(), false);
    },
  );
}
