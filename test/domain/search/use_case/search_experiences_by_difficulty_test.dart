import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_difficulty.dart';

import '../../../constants.dart';
import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchExperiencesByDifficulty useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchExperiencesByDifficulty(mockSearchRepository);
    },
  );
  const difficulty = 1;
  final experiencesFound = {Experience(difficulty: 1), Experience(difficulty: 1), Experience(difficulty: 1)};
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) async => right(experiencesFound));
      // Act
      final result = await useCase(Params(difficulty: difficulty));
      // Assert
      expect(result, right(experiencesFound));
      verify(mockSearchRepository.searchExperiencesByDifficulty(any));
      verifyNoMoreInteractions(mockSearchRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(difficulty: difficulty));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockSearchRepository.searchExperiencesByDifficulty(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(difficulty: difficulty));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockSearchRepository.searchExperiencesByDifficulty(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(difficulty: difficulty));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockSearchRepository.searchExperiencesByDifficulty(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
