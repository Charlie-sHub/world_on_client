import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

import '../../../../constant_descriptions.dart';

void main() {
  final Set<Objective> validSet = {Objective.empty()};
  final Set<Objective> emptySet = {};
  final Set<Objective> tooBigSet = _fillSet();
  test(
    descriptionValid,
    () async {
      // Act
      final objectives = ObjectiveSet(validSet);
      // Assert
      expect(objectives.isValid(), true);
      expect(objectives.getOrCrash(), validSet);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionInvalid with emptySet",
        () async {
          // Act
          final objectives = ObjectiveSet(emptySet);
          // Assert
          expect(objectives.isValid(), false);
        },
      );
      test(
        "$descriptionInvalid with tooBigSet",
        () async {
          // Act
          final objectives = ObjectiveSet(tooBigSet);
          // Assert
          expect(objectives.isValid(), false);
        },
      );
    },
  );
}

// Maybe there's a better way to fill the Set
Set<Objective> _fillSet() {
  return {
    Objective.empty().copyWith(id: 1),
    Objective.empty().copyWith(id: 2),
    Objective.empty().copyWith(id: 3),
    Objective.empty().copyWith(id: 4),
    Objective.empty().copyWith(id: 5),
    Objective.empty().copyWith(id: 6),
    Objective.empty().copyWith(id: 7),
    Objective.empty().copyWith(id: 8),
    Objective.empty().copyWith(id: 9),
    Objective.empty().copyWith(id: 10),
    Objective.empty().copyWith(id: 11),
  };
}
