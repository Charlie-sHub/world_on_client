import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/objective.dart';
import 'package:worldon/domain/core/entities/reward.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/experience_management/use_case/edit_experience.dart';

import '../../../constants.dart';
import '../repository/mock_experience_management_repository.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  EditExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = EditExperience(mockExperienceManagementRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      id: 1,
      name: Name("test"),
      description: EntityDescription("It's a test"),
      imageNames: const {"test.jpg"},
      latitude: 1.1,
      longitude: 1.1,
      location: Location(),
      creator: creatorUser,
      difficulty: Difficulty(1),
      creationDate: PastDate(DateTime.now()),
      objectives: {Objective()},
      rewards: {Reward()},
      tags: {Tag()},
      comments: {Comment()},
      doneBy: {User()},
      likedBy: {User()},
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(null));
          verify(mockExperienceManagementRepository.editExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verify(mockExperienceManagementRepository.editExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
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
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceManagementRepository.editExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}
