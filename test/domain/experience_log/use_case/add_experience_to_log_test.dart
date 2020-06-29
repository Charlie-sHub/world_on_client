import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';
import 'package:worldon/domain/experience_log/use_case/add_experience_to_log.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  ExperienceLogRepositoryInterface mockExperienceLogRepository;
  AddExperienceToLog useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockExperienceLogRepository = getIt<ExperienceLogRepositoryInterface>();
      useCase = getIt<AddExperienceToLog>();
    },
  );
  final params = Params(
    experienceId: 1,
  );
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockExperienceLogRepository.addExperienceToLog(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockExperienceLogRepository);
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
          when(mockExperienceLogRepository.addExperienceToLog(any)).thenAnswer((_) async => left(failure));
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

void _verifyInteractions(ExperienceLogRepositoryInterface mockExperienceLogRepository) {
  verify(mockExperienceLogRepository.addExperienceToLog(any));
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
