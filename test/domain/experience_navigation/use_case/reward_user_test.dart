import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_navigation/use_case/reward_user.dart';

import '../../../constants.dart';
import '../repository/mock_experience_navigation_repository.dart';

void main() {
  MockExperienceNavigationRepository mockExperienceNavigationRepository;
  RewardUser useCase;
  setUp(
    () {
      mockExperienceNavigationRepository = MockExperienceNavigationRepository();
      useCase = RewardUser(mockExperienceNavigationRepository);
    },
  );
  const userId = 1;
  const experienceId = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceNavigationRepository.rewardUser(
        experienceId: anyNamed("experienceId"),
        userId: anyNamed("userId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        experienceId: experienceId,
        userId: userId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockExperienceNavigationRepository.rewardUser(
        experienceId: anyNamed("experienceId"),
        userId: anyNamed("userId"),
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
          when(mockExperienceNavigationRepository.rewardUser(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            experienceId: experienceId,
            userId: userId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceNavigationRepository.rewardUser(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          ));
          verifyNoMoreInteractions(mockExperienceNavigationRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockExperienceNavigationRepository.rewardUser(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(
            experienceId: experienceId,
            userId: userId,
          ));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockExperienceNavigationRepository.rewardUser(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          ));
          verifyNoMoreInteractions(mockExperienceNavigationRepository);
        },
      );
    },
  );
}
