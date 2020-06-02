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
  const difficulty = 1;
  const experienceId = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.rateDifficulty(
        experienceId: anyNamed("experienceId"),
        difficulty: anyNamed("difficulty"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        experienceId: experienceId,
        difficulty: difficulty,
      ));
      // Assert
      expect(result, right(null));
      verify(mockExperienceNavigationRepository.rateDifficulty(
        experienceId: anyNamed("experienceId"),
        difficulty: anyNamed("difficulty"),
      ));
      verifyNoMoreInteractions(mockExperienceNavigationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockExperienceNavigationRepository.rateDifficulty(
            experienceId: anyNamed("experienceId"),
            difficulty: anyNamed("difficulty"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            experienceId: experienceId,
            difficulty: difficulty,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceNavigationRepository.rateDifficulty(
            experienceId: anyNamed("experienceId"),
            difficulty: anyNamed("difficulty"),
          ));
          verifyNoMoreInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockExperienceNavigationRepository.rateDifficulty(
            experienceId: anyNamed("experienceId"),
            difficulty: anyNamed("difficulty"),
          )).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(
            experienceId: experienceId,
            difficulty: difficulty,
          ));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockExperienceNavigationRepository.rateDifficulty(
            experienceId: anyNamed("experienceId"),
            difficulty: anyNamed("difficulty"),
          ));
          verifyNoMoreInteractions(mockExperienceNavigationRepository);
        },
      );
    },
  );
}
