import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/remove_achievement.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  RemoveAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = RemoveAchievement(mockAchievementRepository);
    },
  );
  const id = 1;
  test(
    "Should return nothing is everything goes well",
    () async {
      // Arrange
      when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(null));
      verify(mockAchievementRepository.removeAchievement(any));
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
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.removeAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockAchievementRepository.removeAchievement(any));
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
