import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';
import 'package:worldon/domain/experience_log/use_case/load_user_log.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  ExperienceLogRepositoryInterface mockExperienceLogRepository;
  LoadUserLog useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockExperienceLogRepository = getIt<ExperienceLogRepositoryInterface>();
      useCase = getIt<LoadUserLog>();
    },
  );
  final params = NoParams();
  final experience = Experience.empty();
  final experienceSet = {experience};
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockExperienceLogRepository.loadUserLog()).thenAnswer((_) => createStream(right(experienceSet)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(experienceSet));
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
          when(mockExperienceLogRepository.loadUserLog()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockExperienceLogRepository.loadUserLog()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockExperienceLogRepository.loadUserLog()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
    },
  );
}

Future<Either<Failure, Set<Experience>>> _act(LoadUserLog useCase, NoParams params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Experience>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(ExperienceLogRepositoryInterface mockExperienceLogRepository) {
  verify(mockExperienceLogRepository.loadUserLog());
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
