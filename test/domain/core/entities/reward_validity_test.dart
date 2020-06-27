import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import '../../../constant_descriptions.dart';

void main() {
  final validReward = Reward.empty().copyWith(
    name: Name("Test"),
    description: EntityDescription("Test"),
  );
  final invalidNameReward = validReward.copyWith(name: Name(""));
  final invalidDescriptionReward = validReward.copyWith(description: EntityDescription(""));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validReward.isValid, true);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with invalidNameReward",
        () async {
          // Assert
          expect(invalidNameReward.isValid, false);
        },
      );
      test(
        "$descriptionInvalid with invalidDescriptionReward",
        () async {
          // Assert
          expect(invalidDescriptionReward.isValid, false);
        },
      );
    },
  );
}
