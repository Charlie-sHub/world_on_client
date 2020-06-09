import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_tags_by_name.dart';

import '../../../constants.dart';
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
  final params = Params(name: Name("test"));
  final tagsFound = {
    Tag(name: Name("test1")),
    Tag(name: Name("test2")),
    Tag(name: Name("test3")),
  };
  test(
    "Should return a Set of Tags",
    () async {
      // Arrange
      when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(tagsFound));
      verifyInteractions(mockSearchRepository);
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
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockSearchRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchTagsByName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
