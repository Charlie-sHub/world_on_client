import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/user.dart';
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
  const id = 1;
  final experience = Experience(
    id: 1,
    name: Name("test"),
    description: EntityDescription("It's a test"),
    imageNames: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: Location(),
    creator: User(),
    difficulty: Difficulty(1),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
  );
  test(
    "Should return the Experience wanted",
    () async {
      // Arrange
      when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => right(experience));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(experience));
      verify(mockExperienceManagementRepository.getExperience(any));
      verifyNoMoreInteractions(mockExperienceManagementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceManagementRepository.getExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockExperienceManagementRepository.getExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockExperienceManagementRepository.getExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}
