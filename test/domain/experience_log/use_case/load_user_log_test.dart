import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/user.dart';
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
  const userId = 1;
  final experience = Experience(
    id: 1,
    name: Name("test"),
    description: EntityDescription("It's a test"),
    imageNames: const {"test.jpg"},
    latitude: 1.1,
    longitude: 1.1,
    location: Location(),
    creator: User(),
    difficulty: Difficulty(1),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
  );
  final Set<Experience> experienceSet = {experience};
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => right(experienceSet));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(experienceSet));
      verify(mockExperienceLogRepository.loadUserLog(any));
      verifyNoMoreInteractions(mockExperienceLogRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockExperienceLogRepository.loadUserLog(any));
          verifyNoMoreInteractions(mockExperienceLogRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockExperienceLogRepository.loadUserLog(any));
          verifyNoMoreInteractions(mockExperienceLogRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockExperienceLogRepository.loadUserLog(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockExperienceLogRepository.loadUserLog(any));
          verifyNoMoreInteractions(mockExperienceLogRepository);
        },
      );
    },
  );
}
