import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart';

import '../../../constants.dart';
import '../repository/mock_experience_navigation_repository.dart';

void main() {
  MockExperienceNavigationRepository mockExperienceNavigationRepository;
  LoadSurroundingExperiences useCase;
  setUp(
    () {
      mockExperienceNavigationRepository = MockExperienceNavigationRepository();
      useCase = LoadSurroundingExperiences(mockExperienceNavigationRepository);
    },
  );
  final params = Params(
    latitude: 0.0,
    longitude: 0.0,
  );
  // TODO: refactor the other tests so they use empty Sets instead of Sets with null values
  final experienceSet = <Experience>{};
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.loadSurroundingExperiences(
        latitude: anyNamed("latitude"),
        longitude: anyNamed("longitude"),
      )).thenAnswer((_) async => right(experienceSet));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experienceSet));
      _verifyInteractions(mockExperienceNavigationRepository);
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
          when(mockExperienceNavigationRepository.loadSurroundingExperiences(
            latitude: anyNamed("latitude"),
            longitude: anyNamed("longitude"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockExperienceNavigationRepository.loadSurroundingExperiences(
            latitude: anyNamed("latitude"),
            longitude: anyNamed("longitude"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceNavigationRepository mockExperienceNavigationRepository) {
  verify(mockExperienceNavigationRepository.loadSurroundingExperiences(
    latitude: anyNamed("latitude"),
    longitude: anyNamed("longitude"),
  ));
  verifyNoMoreInteractions(mockExperienceNavigationRepository);
}
