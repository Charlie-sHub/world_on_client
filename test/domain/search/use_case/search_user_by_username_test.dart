import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_username.dart';

import '../../../constants.dart';
import '../repository/mock_search_repository.dart';

void main() {
  MockSearchRepository mockSearchRepository;
  SearchUsersByUsername useCase;
  setUp(
    () {
      mockSearchRepository = MockSearchRepository();
      useCase = SearchUsersByUsername(mockSearchRepository);
    },
  );
  final username = Name("test");
  final usersFoundByUsername = {
    User(username: Name("test1")),
    User(username: Name("test2")),
    User(username: Name("test3")),
  };
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
      // Act
      final result = await useCase(Params(username: username));
      // Assert
      expect(result, right(usersFoundByUsername));
      verify(mockSearchRepository.searchUsersByUserName(any));
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
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(username: username));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockSearchRepository.searchUsersByUserName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(username: username));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockSearchRepository.searchUsersByUserName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(username: username));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockSearchRepository.searchUsersByUserName(any));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
