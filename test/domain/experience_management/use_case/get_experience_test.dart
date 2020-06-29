import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';

import '../../../../lib/domain/experience_management/repository/experience_management_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  GetExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = GetExperience(mockExperienceManagementRepository);
    },
  );
  const id = 1;
  final params = Params(id: id);
  final experience = Experience.empty().copyWith(id: id);
  test(
    "Should return the Experience wanted",
    () async {
      // Arrange
      when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => right(experience));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experience));
      _verifyInteractions(mockExperienceManagementRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockExperienceManagementRepository.getExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceManagementRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceManagementRepository mockExperienceManagementRepository) {
  verify(mockExperienceManagementRepository.getExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
