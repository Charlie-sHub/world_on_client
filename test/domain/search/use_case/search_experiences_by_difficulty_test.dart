import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_difficulty.dart';

import '../../../constant_descriptions.dart';
import '../../core/methods/create_stream.dart';
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
  final difficulty = Difficulty(1);
  final params = Params(difficulty: difficulty);
  final experiencesFound = {
    Experience(
      id: null,
      name: null,
      description: null,
      imageURLs: null,
      coordinates: null,
      location: null,
      creator: null,
      difficulty: difficulty,
      creationDate: null,
      modificationDate: null,
      comments: null,
      objectives: null,
      rewards: null,
      tags: null,
      likedBy: null,
      doneBy: null,
    ),
  };
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) => createStream(right(experiencesFound)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(experiencesFound));
      _verifyInteractions(mockSearchRepository);
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
          when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: errorString));
          when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockSearchRepository.searchExperiencesByDifficulty(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
    },
  );
}

Future<Either<Failure, Set<Experience>>> _act(SearchExperiencesByDifficulty useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Experience>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchExperiencesByDifficulty(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
