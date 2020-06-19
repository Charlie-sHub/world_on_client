import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/award_achievement.dart';

import '../../../constant_descriptions.dart';
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
  final params = Params(
    achievementId: achievementId,
    userId: userId,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAchievementRepository.awardAchievement(
        achievementId: anyNamed("achievementId"),
        userId: anyNamed("userId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      verifyInteractions(mockAchievementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockAchievementRepository.awardAchievement(
            achievementId: anyNamed("achievementId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          verifyInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockAchievementRepository mockAchievementRepository) {
  verify(mockAchievementRepository.awardAchievement(
    achievementId: anyNamed("achievementId"),
    userId: anyNamed("userId"),
  ));
  verifyNoMoreInteractions(mockAchievementRepository);
}
