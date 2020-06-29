import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';

import '../../../../test_descriptions.dart';

void main() {
  const validDifficulty = 9;
  const invalidDifficulty = 11;
  test(
    TestDescription.valid,
    () async {
      // Act
      final difficulty = Difficulty(validDifficulty);
      // Assert
      expect(difficulty.isValid(), true);
      expect(difficulty.getOrCrash(), validDifficulty);
    },
  );
  test(
    TestDescription.invalid,
    () async {
      // Act
      final difficulty = Difficulty(invalidDifficulty);
      // Assert
      expect(difficulty.isValid(), false);
    },
  );
}
