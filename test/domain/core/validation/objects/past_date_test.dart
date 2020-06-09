import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../../constants.dart';

void main() {
  final validDate = DateTime.now().subtract(const Duration(days: 50));
  final invalidDate = DateTime.now().add(const Duration(days: 50));
  test(
    descriptionValid,
    () async {
      // Act
      final dateTime = PastDate(validDate);
      // Assert
      expect(dateTime.isValid(), true);
      expect(dateTime.getOrCrash(), validDate);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final dateTime = PastDate(invalidDate);
      // Assert
      expect(dateTime.isValid(), false);
    },
  );
}
