import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import '../../../constants.dart';
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
  final params = Params(
    name: Name("Test Achievement"),
    description: EntityDescription("This is just a test"),
    imageName: "test.jpg",
    type: "test",
    requisite: 1,
    experiencePoints: ExperiencePoints(1),
    creator: User(),
    tags: const <Tag>{},
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => right(null));
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
          const coreFailure = CoreFailure.serverError();
          when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          const coreFailure = CoreFailure.nameAlreadyInUse();
          when(mockAchievementRepository.createAchievement(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockAchievementRepository.createAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
