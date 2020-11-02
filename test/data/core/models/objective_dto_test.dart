import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/data/core/models/objective/objective_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final objective = getValidObjective();
      // Act
      final objectiveDto = ObjectiveDto.fromDomain(objective);
      final result = objectiveDto.toDomain();
      // Assert
      expect(result, objective);
    },
  );
}
