import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/get_user_achievements.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  GetUserAchievements useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = GetUserAchievements(mockAchievementRepository);
    },
  );
  const userId = 1;
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
  final Set<Achievement> achievementSet = {achievement};
  test(
    "Should return a Set of achievements",
    () async {
      // Arrange
      when(mockAchievementRepository.getUserAchievements(any)).thenAnswer((_) async => right(achievementSet));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(achievementSet));
      verify(mockAchievementRepository.getUserAchievements(any));
      verifyNoMoreInteractions(mockAchievementRepository);
    },
  );
  group(
    "Testing on Failure",
    () {
      test(
        "Should return a ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockAchievementRepository.getUserAchievements(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.getUserAchievements(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        "Should return a NotFoundError if the User has no Achievements",
        () async {
          // Arrange
          when(mockAchievementRepository.getUserAchievements(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockAchievementRepository.getUserAchievements(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
