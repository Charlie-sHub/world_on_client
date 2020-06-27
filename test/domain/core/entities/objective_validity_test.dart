import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

import '../../../constant_descriptions.dart';

void main() {
  final validObjective = Objective.empty().copyWith(description: EntityDescription("Test"));
  final invalidDescriptionObjective = validObjective.copyWith(description: EntityDescription(""));
  test(
    descriptionValid,
    () async {
      // Assert
      expect(validObjective.isValid, true);
    },
  );
  test(
    "$descriptionInvalid with invalidDescriptionObjective",
    () async {
      // Assert
      expect(invalidDescriptionObjective.isValid, false);
    },
  );
}
