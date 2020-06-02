import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/add_experience_to_log.dart';

import '../../../constants.dart';
import '../repository/mock_core_repository.dart';

void main() {
  MockCoreRepository mockCoreRepository;
  AddExperienceToLog useCase;
  setUp(
    () {
      mockCoreRepository = MockCoreRepository();
      useCase = AddExperienceToLog(mockCoreRepository);
    },
  );
  const userId = 1;
  const experienceId = 1;
  test(
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockCoreRepository.addExperienceToLog(
        experienceId: anyNamed("experienceId"),
        userId: anyNamed("userId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        experienceId: experienceId,
        userId: userId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockCoreRepository.addExperienceToLog(
        experienceId: anyNamed("experienceId"),
        userId: anyNamed("userId"),
      ));
      verifyNoMoreInteractions(mockCoreRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockCoreRepository.addExperienceToLog(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            experienceId: experienceId,
            userId: userId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockCoreRepository.addExperienceToLog(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          ));
          verifyNoMoreInteractions(mockCoreRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockCoreRepository.addExperienceToLog(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          )).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(
            experienceId: experienceId,
            userId: userId,
          ));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockCoreRepository.addExperienceToLog(
            experienceId: anyNamed("experienceId"),
            userId: anyNamed("userId"),
          ));
          verifyNoMoreInteractions(mockCoreRepository);
        },
      );
    },
  );
}
