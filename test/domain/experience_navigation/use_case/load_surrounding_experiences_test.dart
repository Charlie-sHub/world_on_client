import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_navigation/use_case/load_surrounding_experiences.dart';

import '../../../../lib/domain/experience_navigation/repository/experience_navigation_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockExperienceNavigationRepository mockExperienceNavigationRepository;
  LoadSurroundingExperiences useCase;
  setUp(
    () {
      mockExperienceNavigationRepository = MockExperienceNavigationRepository();
      useCase = LoadSurroundingExperiences(mockExperienceNavigationRepository);
    },
  );
  final params = Params(coordinates: Coordinates.empty());
  final experienceSet = <Experience>{};
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.loadSurroundingExperiences(any)).thenAnswer((_) async => right(experienceSet));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experienceSet));
      _verifyInteractions(mockExperienceNavigationRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockExperienceNavigationRepository.loadSurroundingExperiences(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockExperienceNavigationRepository.loadSurroundingExperiences(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceNavigationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceNavigationRepository mockExperienceNavigationRepository) {
  verify(mockExperienceNavigationRepository.loadSurroundingExperiences(any));
  verifyNoMoreInteractions(mockExperienceNavigationRepository);
}
