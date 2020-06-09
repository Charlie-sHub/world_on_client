import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_navigation/use_case/rate_difficulty.dart';

import '../../../constants.dart';
import '../repository/mock_experience_navigation_repository.dart';

void main() {
  MockExperienceNavigationRepository mockExperienceNavigationRepository;
  RateDifficulty useCase;
  setUp(
    () {
      mockExperienceNavigationRepository = MockExperienceNavigationRepository();
      useCase = RateDifficulty(mockExperienceNavigationRepository);
    },
  );
  final params = Params(
    experienceId: 1,
    difficulty: 1,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.rateDifficulty(
        experienceId: anyNamed("experienceId"),
        difficulty: anyNamed("difficulty"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      verifyInteractions(mockExperienceNavigationRepository);
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
          when(mockExperienceNavigationRepository.rateDifficulty(
            experienceId: anyNamed("experienceId"),
            difficulty: anyNamed("difficulty"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockExperienceNavigationRepository.rateDifficulty(
            experienceId: anyNamed("experienceId"),
            difficulty: anyNamed("difficulty"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockExperienceNavigationRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockExperienceNavigationRepository mockExperienceNavigationRepository) {
  verify(mockExperienceNavigationRepository.rateDifficulty(
    experienceId: anyNamed("experienceId"),
    difficulty: anyNamed("difficulty"),
  ));
  verifyNoMoreInteractions(mockExperienceNavigationRepository);
}
