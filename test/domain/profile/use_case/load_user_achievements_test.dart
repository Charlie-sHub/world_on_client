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
  final params = Params(userId: 1);
  final achievements = {
    const Achievement(
      id: null,
      name: null,
      description: null,
      imageName: null,
      type: null,
      requisite: null,
      experiencePoints: null,
      creator: null,
      creationDate: null,
      modificationDate: null,
      tags: null,
    ),
  };
  test(
    "Should return a Set of Achievements",
    () async {
      // Arrange
      when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => right(achievements));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(achievements));
      verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadUserAchievements(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
