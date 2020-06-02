import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/award_achievement.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  AwardAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = AwardAchievement(mockAchievementRepository);
    },
  );
  const userId = 1;
  const achievementId = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAchievementRepository.awardAchievement(
        achievementId: anyNamed("achievementId"),
        userId: anyNamed("userId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        achievementId: achievementId,
        userId: userId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockAchievementRepository.awardAchievement(
        achievementId: anyNamed("achievementId"),
        userId: anyNamed("userId"),
      ));
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
          when(mockAchievementRepository.awardAchievement(
            achievementId: anyNamed("achievementId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            achievementId: achievementId,
            userId: userId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.awardAchievement(
            achievementId: anyNamed("achievementId"),
            userId: anyNamed("userId"),
          ));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
