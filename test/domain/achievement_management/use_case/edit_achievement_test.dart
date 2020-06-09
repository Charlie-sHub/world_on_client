import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/use_case/edit_achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constants.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  EditAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = EditAchievement(mockAchievementRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      id: 1,
      name: Name("Test Achievement"),
      description: EntityDescription("This is just a test"),
      imageName: "test.jpg",
      type: "test",
      requisite: 1,
      experiencePoints: ExperiencePoints(1),
      creator: creatorUser,
      creationDate: PastDate(DateTime.now()),
      tags: const <Tag>{},
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(null));
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
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => right(null));
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
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(admin));
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
          when(mockAchievementRepository.editAchievement(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
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
  verify(mockAchievementRepository.editAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
