import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  EditAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = EditAchievement(mockAchievementRepository);
    },
  );
  final achievementToEdit = Achievement(
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
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(achievement: achievementToEdit));
      // Assert
      expect(result, right(null));
      verify(mockAchievementRepository.editAchievement(any));
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
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(achievement: achievementToEdit));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.editAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        "Should return NameAlreadyInUse if the name given is already being used by other Achievement",
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(Params(achievement: achievementToEdit));
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockAchievementRepository.editAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
