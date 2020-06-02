import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_management/use_case/remove_experience.dart';

import '../../../constants.dart';
import '../repository/mock_experience_management_repository.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  RemoveExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = RemoveExperience(mockExperienceManagementRepository);
    },
  );
  const id = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceManagementRepository.removeExperience(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(null));
      verify(mockExperienceManagementRepository.removeExperience(any));
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
          when(mockExperienceManagementRepository.removeExperience(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceManagementRepository.removeExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockExperienceManagementRepository.removeExperience(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockExperienceManagementRepository.removeExperience(any));
          verifyNoMoreInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}
