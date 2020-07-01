import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../../test_descriptions.dart';

void main() {
  final validDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).subtract(const Duration(days: 50));
  final invalidDate = DateTime.now().add(const Duration(days: 50));
  test(
    TestDescription.valid,
    () async {
      // Act
      final dateTime = PastDate(validDate);
      // Assert
      expect(dateTime.isValid(), true);
      expect(dateTime.getOrCrash(), validDate);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final dateTime = PastDate(invalidDate);
      // Assert
      expect(dateTime.isValid(), false);
    },
  );
}
