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
      final result = await useCase(Params(tags: tags));
      // Assert
      expect(result, right(experiencesFound));
      verify(mockSearchRepository.searchExperiencesByTags(any));
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
          when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(tags: tags));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockSearchRepository.searchExperiencesByTags(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(tags: tags));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockSearchRepository.searchExperiencesByTags(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByTags(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(tags: tags));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockSearchRepository.searchExperiencesByTags(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
