import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/experience_log/use_case/dismiss_experience_from_log.dart';

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
  const userId = 1;
  const experienceId = 1;
  test(
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockExperienceLogRepository.dismissExperienceFromLog(
        userId: anyNamed("userId"),
        experienceId: anyNamed("experienceId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        userId: userId,
        experienceId: experienceId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockExperienceLogRepository.dismissExperienceFromLog(
        userId: anyNamed("userId"),
        experienceId: anyNamed("experienceId"),
      ));
      verifyNoMoreInteractions(mockExperienceLogRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockExperienceLogRepository.dismissExperienceFromLog(
            userId: anyNamed("userId"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            userId: userId,
            experienceId: experienceId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceLogRepository.dismissExperienceFromLog(
            userId: anyNamed("userId"),
            experienceId: anyNamed("experienceId"),
          ));
          verifyNoMoreInteractions(mockExperienceLogRepository);
        },
      );
    },
  );
}
