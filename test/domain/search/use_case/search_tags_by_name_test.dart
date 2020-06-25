import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';

import '../../../constant_descriptions.dart';
import '../../core/methods/create_stream.dart';
import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchTagsByName useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchTagsByName(mockSearchRepository);
    },
  );
  final name = Name("Test");
  final params = Params(name: name);
  final tagsFound = {
    Tag(
      name: name,
      modificationDate: null,
      creationDate: null,
      id: null,
      creator: null,
    ),
  };
  test(
    "Should return a Set of Tags",
    () async {
      // Arrange
      when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) => createStream(right(tagsFound)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(tagsFound));
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
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, Set<Tag>>> _act(SearchTagsByName useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Tag>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchTagsByName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
