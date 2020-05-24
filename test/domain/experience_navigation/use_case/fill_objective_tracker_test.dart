import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/objective.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_navigation/use_case/fill_objective_tracker.dart';

void main() {
  FillObjectiveTracker useCase;
  setUp(
    () {
      useCase = FillObjectiveTracker();
    },
  );
  final objective1 = Objective(id: 1, description: "test", latitude: 1.1, longitude: 1.1, imageName: "test.jpg");
  final objective2 = Objective(id: 2, description: "test", latitude: 1.1, longitude: 1.1, imageName: "test.jpg");
  final objective3 = Objective(id: 3, description: "test", latitude: 1.1, longitude: 1.1, imageName: "test.jpg");
  final objectiveSet = {objective1, objective2, objective3};
  final Map<int, bool> objectiveTracker = {
    1: false,
    2: false,
    3: false,
  };
  final badObjectiveSet = {objective1, Objective(), objective3};
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
    "Should return UnknownDomainLayerError if there's a problem",
    () async {
      // Act
      final result = useCase(Params(objectiveSet: badObjectiveSet));
      // Assert
      expect(result, left<Failure, Map<int, bool>>(const CoreFailure.unknownDomainLayerError()));
    },
  );
}
