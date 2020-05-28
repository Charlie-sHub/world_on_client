import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_user_achievements.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadUserAchievements useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadUserAchievements(mockProfileRepository);
    },
  );
  const userId = 1;
  final achievements = {
    Achievement(),
    Achievement(),
    Achievement(),
  };
  test(
    "Should return a Set of Achievements",
    () async {
      // Arrange
      when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => right(achievements));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(achievements));
      verify(mockProfileRepository.loadUserAchievements(any));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadUserAchievements(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadUserAchievements(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadUserAchievements(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
