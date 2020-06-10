import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_experiences_created.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadExperiencesCreated useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadExperiencesCreated(mockProfileRepository);
    },
  );
  final params = Params(id: 1);
  final experiencesCreated = {
    const Experience(
      id: null,
      name: null,
      description: null,
      imageURLs: null,
      latitude: null,
      longitude: null,
      location: null,
      creator: null,
      difficulty: null,
      creationDate: null,
      modificationDate: null,
      comments: null,
      objectives: null,
      rewards: null,
      tags: null,
      likedBy: null,
      doneBy: null,
    ),
  };
  test(
    "Should return a Set of Experiences if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadExperiencesCreated(any)).thenAnswer((_) async => right(experiencesCreated));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experiencesCreated));
      _verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.loadExperiencesCreated(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockProfileRepository.loadExperiencesCreated(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockProfileRepository.loadExperiencesCreated(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadExperiencesCreated(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
