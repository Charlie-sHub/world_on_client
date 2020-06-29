import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_management/use_case/create_experience.dart';

import '../../../../lib/domain/experience_management/repository/experience_management_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockExperienceManagementRepository mockExperienceManagementRepository;
  CreateExperience useCase;
  setUp(
    () {
      mockExperienceManagementRepository = MockExperienceManagementRepository();
      useCase = CreateExperience(mockExperienceManagementRepository);
    },
  );
  final params = Params(experience: Experience.empty());
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockExperienceManagementRepository.createExperience(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
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
          when(mockExperienceManagementRepository.createExperience(any)).thenAnswer((_) async => left(failure));
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
  verify(mockExperienceManagementRepository.createExperience(any));
  verifyNoMoreInteractions(mockExperienceManagementRepository);
}
