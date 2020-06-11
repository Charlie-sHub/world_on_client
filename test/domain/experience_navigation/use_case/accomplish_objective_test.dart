import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/experience_navigation/use_case/accomplish_objective.dart';

import '../../../constants.dart';

void main() {
  AccomplishObjective useCase;
  final objectiveTracker = {
    1: false,
    2: false,
    3: false,
  };
  setUp(
    () {
      useCase = AccomplishObjective(objectiveTracker);
    },
  );
  group(
    "Testing working successfully",
    () {
      test(
        "Should return false as the objective tracker will not be all true",
        () async {
          // Arrange
          const objectiveId = 1;
          // Act
          final either = useCase(Params(objectiveId: objectiveId));
          final result = either.fold((failure) => failure, (r) => r);
          // Assert
          expect(result, false);
        },
      );
      test(
        "Should return true as the objective tracker will be full",
        () async {
          // Arrange
          const objectiveId1 = 1;
          const objectiveId2 = 2;
          const objectiveId3 = 3;
          // Act
          var either = useCase(Params(objectiveId: objectiveId1));
          either = useCase(Params(objectiveId: objectiveId2));
          either = useCase(Params(objectiveId: objectiveId3));
          final result = either.fold((failure) => failure, (r) => r);
          // Assert
          expect(result, true);
        },
      );
    },
  );
  test(
    descriptionUnknownDomainLayerError,
    () async {
      // Act
      final result = useCase(Params(objectiveId: null));
      // Assert
      expect(result, left<Failure, bool>(const CoreDomainFailure.unknownDomainLayerError()));
    },
  );
}
