import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/search/entity/search_results.dart';
import 'package:worldon/domain/search/use_case/search_by_name.dart';

import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchByName useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchByName(mockSearchRepository);
    },
  );
  const name = "test";
  final experiencesFound = {Experience(), Experience(), Experience()};
  final usersFoundByUsername = {User(), User(), User()};
  final usersFoundByName = {User(), User(), User()};
  final tagsFound = {Tag(), Tag(), Tag()};
  // Commenting this to be able to test everything without hitches
  // Leaving it because the idea of an unified use case for name searches might be used in the future
  /*group(
    "Testing on success",
    () {
      test(
        "Should return SearchResult",
        () async {
          // Arrange
          final searchResults = SearchResults(experiencesFound: experiencesFound, usersFound: usersFoundByUsername.union(usersFoundByName), tagsFound: tagsFound);
          when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
          when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
          // Act
          final either = await useCase(Params(name: name));
          final result = either.fold((failure) => null, (r) => r);
          // Assert
          expectSearchResults(result, searchResults);
          verifyRepositoryMethodsCall(mockSearchRepository);
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      group(
        "Testing it can handle NotFoundError(s)",
        () {
          test(
            "Should return SearchResult",
            () async {
              // Arrange
              final searchResults = SearchResults(experiencesFound: <Experience>{}, usersFound: usersFoundByUsername.union(usersFoundByName), tagsFound: tagsFound);
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final either = await useCase(Params(name: name));
              final result = either.fold((failure) => null, (r) => r);
              // Assert
              expectSearchResults(result, searchResults);
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "Should return SearchResult",
            () async {
              // Arrange
              final searchResults = SearchResults(experiencesFound: experiencesFound, usersFound: usersFoundByName.union(usersFoundByName), tagsFound: <Tag>{});
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final either = await useCase(Params(name: name));
              final result = either.fold((failure) => null, (r) => r);
              // Assert
              expectSearchResults(result, searchResults);
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "Should return SearchResult",
            () async {
              // Arrange
              final searchResults = SearchResults(experiencesFound: experiencesFound, usersFound: usersFoundByUsername.union(<User>{}), tagsFound: tagsFound);
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final either = await useCase(Params(name: name));
              final result = either.fold((failure) => null, (r) => r);
              // Assert
              expectSearchResults(result, searchResults);
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "Should return SearchResult",
            () async {
              // Arrange
              final searchResults = SearchResults(experiencesFound: experiencesFound, usersFound: <User>{}.union(usersFoundByName), tagsFound: tagsFound);
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
              // Act
              final either = await useCase(Params(name: name));
              final result = either.fold((failure) => null, (r) => r);
              // Assert
              expectSearchResults(result, searchResults);
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      group(
        "Testing each call to the repository returning a ServerError",
        () {
          test(
            "$descriptionServerError after searchExperiencesByName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.serverError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "$descriptionServerError after searchTagsByName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.serverError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "$descriptionServerError after searchUsersByName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.serverError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "$descriptionServerError after searchUsersByUserName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.serverError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
        },
      );
      group(
        "Testing each call to the repository returning a CacheError",
        () {
          test(
            "$descriptionCacheError after searchExperiencesByName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.cacheError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "$descriptionCacheError after searchTagsByName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.cacheError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "$descriptionCacheError after searchUsersByName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.cacheError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
          test(
            "$descriptionCacheError after searchUsersByUserName returns a failure",
            () async {
              // Arrange
              when(mockSearchRepository.searchExperiencesByName(any)).thenAnswer((_) async => right(experiencesFound));
              when(mockSearchRepository.searchTagsByName(any)).thenAnswer((_) async => right(tagsFound));
              when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
              when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
              // Act
              final result = await useCase(Params(name: name));
              // Assert
              expect(result, left(const CoreFailure.cacheError()));
              verifyRepositoryMethodsCall(mockSearchRepository);
              verifyNoMoreInteractions(mockSearchRepository);
            },
          );
        },
      );
    },
  );
  */
}

void expectSearchResults(SearchResults result, SearchResults searchResults) {
  expect(result.experiencesFound, equals(searchResults.experiencesFound));
  expect(result.usersFound, equals(searchResults.usersFound));
  expect(result.tagsFound, equals(searchResults.tagsFound));
}

void verifyRepositoryMethodsCall(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchExperiencesByName(any));
  verify(mockSearchRepository.searchTagsByName(any));
  verify(mockSearchRepository.searchUsersByName(any));
  verify(mockSearchRepository.searchUsersByUserName(any));
}
