import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/search/use_case/search_users_by_name.dart';

import '../../../constants.dart';
import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchUsersByName useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchUsersByName(mockSearchRepository);
    },
  );
  const name = "test";
  final usersFoundByName = {
    User(name: "test1"),
    User(name: "test2"),
    User(name: "test3"),
  };
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
      // Act
      final result = await useCase(Params(name: name));
      // Assert
      expect(result, right(usersFoundByName));
      verify(mockSearchRepository.searchUsersByName(any));
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
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockSearchRepository.searchUsersByName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockSearchRepository.searchUsersByName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockSearchRepository.searchUsersByName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
