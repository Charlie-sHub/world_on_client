import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';

import '../../../constants.dart';
import '../repository/mock_experience_management_repository.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  CreateExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = CreateExperience(mockExperienceManagementRepository);
    },
  );
  final params = Params(
    name: Name("test"),
    description: EntityDescription("It's a test"),
    imageNames: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: null,
    creator: null,
    difficulty: Difficulty(1),
    objectives: null,
    rewards: null,
    tags: null,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceManagementRepository.createExperience(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      _verifyInteractions(mockExperienceManagementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockExperienceManagementRepository.createExperience(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceManagementRepository mockExperienceManagementRepository) {
  verify(mockExperienceManagementRepository.createExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
