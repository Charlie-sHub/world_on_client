import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';

import '../../../../constant_descriptions.dart';

void main() {
  const validDifficulty = 9;
  const invalidDifficulty = 11;
  test(
    descriptionValid,
    () async {
      // Act
      final difficulty = Difficulty(validDifficulty);
      // Assert
      expect(difficulty.isValid(), true);
      expect(difficulty.getOrCrash(), validDifficulty);
    },
  );
  test(
    descriptionInvalid,
    () async {
      // Act
      final difficulty = Difficulty(invalidDifficulty);
      // Assert
      expect(difficulty.isValid(), false);
    },
  );
}
