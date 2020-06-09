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
  final params = Params(name: Name("Test"));
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
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(coreFailure));
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
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(coreFailure));
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
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockSearchRepository.searchExperiencesByName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
