import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
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
      imageURL: null,
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
          const coreFailure = CoreDataFailure.serverError();
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
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
          const coreFailure = CoreDataFailure.cacheError();
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
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
          const coreFailure = CoreDataFailure.notFoundError();
          when(mockProfileRepository.loadUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockProfileRepository.loadUserAchievements(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
