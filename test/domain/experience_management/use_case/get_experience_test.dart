import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';

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
    name: "test",
    description: "It's a test",
    imageNames: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: Location(),
    creator: User(),
    difficulty: 1,
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
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
    "Testing on failure",
    () {
      test(
        "Should return a ServerError if there's a problem with the server",
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
        "Should return a CacheError if there's a problem with the cache",
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
        "Should return a NotFoundError if there's no experience with the given id",
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
