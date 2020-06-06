import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_experiences_by_name.dart';

import '../../../constants.dart';
import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchExperiencesByName useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchExperiencesByName(mockSearchRepository);
    },
  );
  final name = Name("test");
  final experiencesFound = {
    Experience(name: Name("Test1")),
    Experience(name: Name("Test2")),
    Experience(name: Name("Test3")),
  };
  test(
    "Should return a Set of Experiences",
    () async {
      // Arrange
      when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
      // Act
      final result = await useCase(Params(name: name));
      // Assert
      expect(result, right(experiencesFound));
      verify(mockSearchRepository.searchExperiencesByName(any));
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
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockSearchRepository.searchExperiencesByName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockSearchRepository.searchExperiencesByName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockSearchRepository.searchExperiencesByName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
