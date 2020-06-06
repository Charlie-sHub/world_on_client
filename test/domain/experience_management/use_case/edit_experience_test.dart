import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
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
  final experience = Experience(
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
    modificationDate: PastDate(DateTime.now()),
  );
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            experience: experience,
            user: creatorUser,
          ));
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
          final result = await useCase(Params(
            experience: experience,
            user: admin,
          ));
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
          final result = await useCase(Params(
            experience: experience,
            user: creatorUser,
          ));
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
          final result = await useCase(Params(
            experience: experience,
            user: randomUser,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}
