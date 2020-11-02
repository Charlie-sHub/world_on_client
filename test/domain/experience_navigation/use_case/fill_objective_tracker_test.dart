import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/experience_navigation/use_case/fill_objective_tracker.dart';

import '../../../test_descriptions.dart';

void main() {
  FillObjectiveTracker useCase;
  setUp(
    () {
      useCase = FillObjectiveTracker();
    },
  );
  final objective1 = Objective.empty().copyWith(id: 1);
  final objective2 = Objective.empty().copyWith(id: 2);
  final objectiveNull = Objective.empty().copyWith(id: null);
  final objectiveSet = ObjectiveSet(KtSet.of(objective1, objective2));
  final badObjectiveSet = ObjectiveSet(KtSet.of(objective1, objectiveNull));
  final Map<int, bool> objectiveTracker = {
    1: false,
    2: false,
  };
  test(
    "Should return a Map of int (corresponding to each Objective id) and bool",
    () async {
      // Act
      final either = useCase(Params(objectiveSet: objectiveSet));
      final result = either.fold((failure) => null, (rightObjectiveTracker) => rightObjectiveTracker);
      // Assert
      expect(result, equals(objectiveTracker));
    },
  );
  test(
    TestDescription.unknownDomainLayerError,
    () async {
      // Arrange
      const failure = Failure.coreDomain(
        CoreDomainFailure.domainLayerError(
          errorString: "Null id in the objective tracker",
        ),
      );
      // Act
      final result = useCase(Params(objectiveSet: badObjectiveSet));
      // Assert
      expect(result, left<Failure, Map<int, bool>>(failure));
    },
  );
}
