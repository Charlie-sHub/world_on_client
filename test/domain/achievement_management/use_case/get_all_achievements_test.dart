import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/get_all_achievements.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  GetAllAchievements useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = GetAllAchievements(mockAchievementRepository);
    },
  );
  final achievement = Achievement(
    id: 1,
    name: Name("Test Achievement"),
    description: EntityDescription("This is just a test"),
    imageName: "test.jpg",
    type: "test",
    requisite: 1,
    experiencePoints: ExperiencePoints(1),
    creator: User(),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    tags: const <Tag>{},
  );
  final List<Achievement> achievementList = [achievement];
  test(
    "Should return the list of Achievements",
    () async {
      // Arrange
      when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => right(achievementList));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(achievementList));
      verify(mockAchievementRepository.getAllAchievement());
      verifyNoMoreInteractions(mockAchievementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockAchievementRepository.getAllAchievement());
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockAchievementRepository.getAllAchievement());
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockAchievementRepository.getAllAchievement());
          verifyNoMoreInteractions(mockAchievementRepository);
        },
      );
    },
  );
}
