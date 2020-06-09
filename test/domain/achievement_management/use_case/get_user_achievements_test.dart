import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/get_user_achievements.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  GetUserAchievements useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = GetUserAchievements(mockAchievementRepository);
    },
  );
  final params = Params(userId: 1);
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
  final Set<Achievement> achievementSet = {achievement};
  test(
    "Should return a Set of achievements",
    () async {
      // Arrange
      when(mockAchievementRepository.getUserAchievements(any)).thenAnswer((_) async => right(achievementSet));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(achievementSet));
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
          const coreFailure = CoreFailure.serverError();
          when(mockAchievementRepository.getUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
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
          when(mockAchievementRepository.getUserAchievements(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockAchievementRepository mockAchievementRepository) {
  verify(mockAchievementRepository.getUserAchievements(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
