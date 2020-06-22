import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/Objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

import '../../../../constant_descriptions.dart';

void main() {
  final Set<Objective> validSet = {
    const Objective(
      id: null,
      description: null,
      coordinates: null,
      imageName: null,
    ),
  };
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
    const Objective(
      id: 1,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 2,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 3,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 4,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 5,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 6,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 7,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 8,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 9,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 10,
      description: null,
      coordinates: null,
      imageName: null,
    ),
    const Objective(
      id: 11,
      description: null,
      coordinates: null,
      imageName: null,
    ),
  };
}
