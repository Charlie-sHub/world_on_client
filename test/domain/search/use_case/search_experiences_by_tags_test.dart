import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_tags.dart';

import '../../../constants.dart';
import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchExperiencesByTags useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchExperiencesByTags(mockSearchRepository);
    },
  );
  final tags = {Tag(id: 1, name: Name("test"))};
  final params = Params(tags: tags);
  final experiencesFound = {
    Experience(name: Name("test")),
    Experience(name: Name("testable")),
    Experience(name: Name("testing")),
  };
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => right(experiencesFound));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experiencesFound));
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
          when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => left(coreFailure));
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
          when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => left(coreFailure));
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
          when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockSearchRepository.searchExperiencesByTags(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
