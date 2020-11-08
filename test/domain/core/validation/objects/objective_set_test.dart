import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

import '../../../../test_descriptions.dart';

void main() {
  final validSet = KtSet.of(Objective.empty());
  const emptySet = KtSet<Objective>.empty();
  final tooBigSet = _fillSet();
  test(
    TestDescription.valid,
    () async {
      // Act
      final objectives = ObjectiveSet(validSet);
      // Assert
      expect(objectives.isValid(), true);
      expect(objectives.getOrCrash(), validSet);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with emptySet",
        () async {
          // Act
          final objectives = ObjectiveSet(emptySet);
          // Assert
          expect(objectives.isValid(), false);
        },
      );
      test(
        "${TestDescription.invalid} with tooBigSet",
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
KtSet<Objective> _fillSet() => {
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
      Objective.empty(),
    }.toImmutableSet();
