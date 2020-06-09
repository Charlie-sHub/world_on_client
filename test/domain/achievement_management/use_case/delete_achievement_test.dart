import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  DeleteAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = DeleteAchievement(mockAchievementRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final achievement = Achievement(creator: creatorUser, id: 1);
  Params setUpParams(User userRequesting) {
    return Params(
      achievement: achievement,
      userRequesting: userRequesting,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockAchievementRepository);
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
          const coreFailure = CoreFailure.serverError();
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockAchievementRepository mockAchievementRepository) {
  verify(mockAchievementRepository.removeAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
