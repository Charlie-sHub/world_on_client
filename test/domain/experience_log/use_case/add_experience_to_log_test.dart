import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';

import '../../../constant_descriptions.dart';
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
      )).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockExperienceLogRepository);
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
          when(mockExperienceLogRepository.addExperienceToLog(
            userId: anyNamed("userId"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceLogRepository mockExperienceLogRepository) {
  verify(mockExperienceLogRepository.addExperienceToLog(
    userId: anyNamed("userId"),
    experienceId: anyNamed("experienceId"),
  ));
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
