import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/create_achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

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
  final name = Name("Test Achievement");
  final params = Params(
    name: name,
    description: EntityDescription("This is just a test"),
    imageUrl: "test.jpg",
    type: "test",
    requisite: 1,
    experiencePoints: ExperiencePoints(1),
    creator: User.empty(),
    tags: TagSet(KtSet.empty()),
  );
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
          final failure = Failure.coreData(CoreDataFailure.nameAlreadyInUse(name: name));
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
