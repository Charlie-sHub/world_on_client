import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';

import '../../../constants.dart';
import '../repository/mock_experience_log_repository.dart';

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
    userId: 1,
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockExperienceLogRepository.dismissExperienceFromLog(
        userId: anyNamed("userId"),
        experienceId: anyNamed("experienceId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
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
          const coreFailure = CoreFailure.serverError();
          when(mockExperienceLogRepository.dismissExperienceFromLog(
            userId: anyNamed("userId"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockExperienceLogRepository mockExperienceLogRepository) {
  verify(mockExperienceLogRepository.dismissExperienceFromLog(
    userId: anyNamed("userId"),
    experienceId: anyNamed("experienceId"),
  ));
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
