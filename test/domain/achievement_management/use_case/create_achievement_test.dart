import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  CreateAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = CreateAchievement(mockAchievementRepository);
    },
  );
  final achievementToCreate = Achievement(
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
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(achievement: achievementToCreate));
      // Assert
      expect(result, right(null));
      verify(mockAchievementRepository.createAchievement(any));
      verifyNoMoreInteractions(mockAchievementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(achievement: achievementToCreate));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.createAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(Params(achievement: achievementToCreate));
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockAchievementRepository.createAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
