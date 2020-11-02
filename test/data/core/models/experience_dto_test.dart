import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final experience = getValidExperience();
      // Act
      final experienceDto = ExperienceDto.fromDomain(experience);
      final result = experienceDto.toDomain();
      // Assert
      expect(result, experience);
    },
  );
}
