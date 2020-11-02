import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import '../../../test_descriptions.dart';

void main() {
  final validReward = Reward.empty().copyWith(
    name: Name("Test"),
    description: EntityDescription("Test"),
  );
  final invalidNameReward = validReward.copyWith(name: Name(""));
  final invalidDescriptionReward = validReward.copyWith(description: EntityDescription(""));
  test(
    TestDescription.valid,
    () async {
      // Assert
      expect(validReward.isValid, true);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with invalidNameReward",
        () async {
          // Assert
          expect(invalidNameReward.isValid, false);
        },
      );
      test(
        "${TestDescription.invalid} with invalidDescriptionReward",
        () async {
          // Assert
          expect(invalidDescriptionReward.isValid, false);
        },
      );
    },
  );
}
