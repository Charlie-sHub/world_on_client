import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/get_achievement.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  GetAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = GetAchievement(mockAchievementRepository);
    },
  );
  const id = 1;
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
  test(
    "Should return the Achievement wanted",
    () async {
      // Arrange
      when(mockAchievementRepository.getAchievement(any)).thenAnswer((_) async => right(achievement));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(achievement));
      verify(mockAchievementRepository.getAchievement(any));
      verifyNoMoreInteractions(mockAchievementRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockAchievementRepository.getAchievement(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.getAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        "Should return a NotFoundError if there's no Achievement with the given id",
        () async {
          // Arrange
          when(mockAchievementRepository.getAchievement(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockAchievementRepository.getAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
