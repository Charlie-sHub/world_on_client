import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/experience_log/use_case/load_user_log.dart';

import '../../../constants.dart';
import '../repository/mock_experience_log_repository.dart';

void main() {
  MockExperienceLogRepository mockExperienceLogRepository;
  LoadUserLog useCase;
  setUp(
    () {
      mockExperienceLogRepository = MockExperienceLogRepository();
      useCase = LoadUserLog(mockExperienceLogRepository);
    },
  );
  final params = Params(userId: 1);
  final experience = Experience(
    id: 1,
    name: Name("test"),
    description: EntityDescription("It's a test"),
    imageURLs: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: null,
    creator: null,
    difficulty: Difficulty(1),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    likedBy: null,
    doneBy: null,
    comments: null,
    tags: null,
    rewards: null,
    objectives: null,
  );
  final experienceSet = {experience};
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => right(experienceSet));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experienceSet));
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
          when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockExperienceLogRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockExperienceLogRepository.loadUserLog(any));
  verifyNoMoreInteractions(mockExperienceLogRepository);
}
