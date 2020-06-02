import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
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
  final experience = Experience(
    id: 1,
    name: "test",
    description: "It's a test",
    imageNames: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: Location(),
    creator: User(),
    difficulty: 1,
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceManagementRepository.editExperience(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(experience: experience));

      // Assert
      expect(result, right(null));
      verify(mockExperienceManagementRepository.editExperience(any));
      verifyNoMoreInteractions(mockExperienceManagementRepository);
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
          final result = await useCase(Params(experience: experience));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceManagementRepository.editExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}
