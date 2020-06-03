import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
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
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final achievementToEdit = Achievement(
    id: 1,
    name: "Test Achievement",
    description: "This is just a test",
    imageName: "test.jpg",
    type: "test",
    requisite: 1,
    experiencePoints: 1,
    creator: creatorUser,
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
    tags: const <Tag>{},
  );
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            achievement: achievementToEdit,
            user: creatorUser,
          ));
          // Assert
          expect(result, right(null));
          verify(mockAchievementRepository.editAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            achievement: achievementToEdit,
            user: admin,
          ));
          // Assert
          expect(result, right(null));
          verify(mockAchievementRepository.editAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            achievement: achievementToEdit,
            user: admin,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.editAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(Params(
            achievement: achievementToEdit,
            user: admin,
          ));
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockAchievementRepository.editAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
          () async {
          final result = await useCase(Params(
            achievement: achievementToEdit,
            user: randomUser,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
