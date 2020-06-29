import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';

import '../../../../lib/domain/experience_log/repository/experience_log_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockExperienceLogRepository mockExperienceLogRepository;
  DismissExperienceFromLog useCase;
  setUp(
    () {
      mockExperienceLogRepository = MockExperienceLogRepository();
      useCase = DismissExperienceFromLog(mockExperienceLogRepository);
    },
  );
  final params = Params(
    experienceId: 1,
  );
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockExperienceLogRepository.dismissExperienceFromLog(any)).thenAnswer((_) async => right(unit));
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
          when(mockExperienceLogRepository.dismissExperienceFromLog(any)).thenAnswer((_) async => left(failure));
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
  verify(mockExperienceLogRepository.dismissExperienceFromLog(any));
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
