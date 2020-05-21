import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/get_all_achievements.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  GetAllAchievements useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = GetAllAchievements(mockAchievementRepository);
    },
  );
  final achievement = Achievement(
    id: 1,
    name: "Test Achievement",
    description: "This is just a test",
    imageName: "test.jpg",
    type: "test",
    requisite: 1,
    experiencePoints: 1,
    creator: User(),
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
    tags: const <Tag>{},
  );
  final List<Achievement> achievementList = [achievement];
  test(
    "Should return the list of Achievements",
    () async {
      // Arrange
      when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => right(achievementList));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(achievementList));
      verify(mockAchievementRepository.getAllAchievement());
      verifyNoMoreInteractions(mockAchievementRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return a CacheError in case there's some problem with the cache",
        () async {
          // Arrange
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockAchievementRepository.getAllAchievement());
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        "Should return a ServerError in case there's some problem with the server",
        () async {
          // Arrange
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.getAllAchievement());
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        "Should return a NotFoundError in case there are no Achievements",
        () async {
          // Arrange
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockAchievementRepository.getAllAchievement());
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
