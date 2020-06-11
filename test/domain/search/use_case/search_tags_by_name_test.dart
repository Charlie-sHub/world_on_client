import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/tag.dart';
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
      when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
      // Act
      final result = await useCase(params);
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
          const coreFailure = CoreDataFailure.serverError();
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.cacheError();
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.notFoundError();
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockSearchRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchTagsByName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
