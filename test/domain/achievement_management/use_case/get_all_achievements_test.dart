import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/get_all_achievements.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
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
    creator: null,
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
      verifyInteractions(mockAchievementRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(NoParams());
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
          when(mockAchievementRepository.getAllAchievement()).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockAchievementRepository mockAchievementRepository) {
  verify(mockAchievementRepository.getAllAchievement());
  verifyNoMoreInteractions(mockAchievementRepository);
}
