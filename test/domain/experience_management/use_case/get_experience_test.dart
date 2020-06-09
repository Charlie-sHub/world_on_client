import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';

import '../../../constants.dart';
import '../repository/mock_experience_management_repository.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  GetExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = GetExperience(mockExperienceManagementRepository);
    },
  );
  final params = Params(id: 1);
  final experience = Experience(
    id: 1,
    name: Name("test"),
    description: EntityDescription("It's a test"),
    imageNames: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: null,
    creator: null,
    difficulty: Difficulty(1),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    rewards: null,
    tags: null,
    comments: null,
    doneBy: null,
    likedBy: null,
    objectives: null,
  );
  test(
    "Should return the Experience wanted",
    () async {
      // Arrange
      when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => right(experience));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experience));
      verifyInteractions(mockExperienceManagementRepository);
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
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockExperienceManagementRepository mockExperienceManagementRepository) {
  verify(mockExperienceManagementRepository.getExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
