import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';

import '../../../constants.dart';
import '../repository/mock_experience_log_repository.dart';

void main() {
  MockExperienceLogRepository mockExperienceLogRepository;
  AddExperienceToLog useCase;
  setUp(
    () {
      mockExperienceLogRepository = MockExperienceLogRepository();
      useCase = AddExperienceToLog(mockExperienceLogRepository);
    },
  );
  final params = Params(
    userId: 1,
    experienceId: 1,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceLogRepository.addExperienceToLog(
        userId: anyNamed("userId"),
        experienceId: anyNamed("experienceId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      verifyInteractions(mockExperienceLogRepository);
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
          when(mockExperienceLogRepository.addExperienceToLog(
            userId: anyNamed("userId"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockExperienceLogRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockExperienceLogRepository mockExperienceLogRepository) {
  verify(mockExperienceLogRepository.addExperienceToLog(
    userId: anyNamed("userId"),
    experienceId: anyNamed("experienceId"),
  ));
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
