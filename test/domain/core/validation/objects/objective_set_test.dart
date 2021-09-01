import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';

import '../../../../test_descriptions.dart';

void main() {
  final _validList = KtList.of(Objective.empty());
  const emptySet = KtList<Objective>.empty();
  final tooBigSet = _fillList();
  test(
    TestDescription.valid,
    () async {
      // Act
      final objectives = ObjectiveList(_validList);
      // Assert
      expect(objectives.isValid(), true);
      expect(objectives.getOrCrash(), _validList);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        "${TestDescription.invalid} with emptySet",
        () async {
          // Act
          final objectives = ObjectiveList(emptySet);
          // Assert
          expect(objectives.isValid(), false);
        },
      );
      test(
        "${TestDescription.invalid} with tooBigSet",
        () async {
          // Act
          final objectives = ObjectiveList(tooBigSet);
          // Assert
          expect(objectives.isValid(), false);
        },
      );
    },
  );
}

// Maybe there's a better way to fill the Set
KtList<Objective> _fillList() => {
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
    }.toImmutableList();
