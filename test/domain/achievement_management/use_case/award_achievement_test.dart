import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/achievement_management/use_case/award_achievement.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  // TODO: check if this can be better formatted
  AchievementRepositoryInterface mockAchievementRepository;
  AwardAchievement useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAchievementRepository = getIt<AchievementRepositoryInterface>();
      useCase = getIt<AwardAchievement>();
    },
  );
  const userId = 1;
  const achievementId = 1;
  final params = Params(
    achievementId: achievementId,
    userId: userId,
  );
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockAchievementRepository.awardAchievement(
        achievementId: anyNamed("achievementId"),
        userId: anyNamed("userId"),
      )).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      verifyInteractions(mockAchievementRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
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

void verifyInteractions(AchievementRepositoryInterface mockAchievementRepository) {
  verify(mockAchievementRepository.awardAchievement(
    achievementId: anyNamed("achievementId"),
    userId: anyNamed("userId"),
  ));
  verifyNoMoreInteractions(mockAchievementRepository);
}
