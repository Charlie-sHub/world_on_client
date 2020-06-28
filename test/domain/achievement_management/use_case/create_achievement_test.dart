import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';

import '../../../constant_descriptions.dart';
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
  final params = Params(achievement: Achievement.empty());
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockAchievementRepository);
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
          when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.nameAlreadyInUse(name: params.achievement.name));
          when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockAchievementRepository mockAchievementRepository) {
  verify(mockAchievementRepository.createAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
