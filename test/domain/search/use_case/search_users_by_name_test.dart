import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
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
  final params = Params(name: Name("test"));
  final usersFoundByName = {
    User(name: Name("test1")),
    User(name: Name("test2")),
    User(name: Name("test3")),
  };
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => right(usersFoundByName));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(usersFoundByName));
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
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(coreFailure));
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
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(coreFailure));
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
          when(mockSearchRepository.searchUsersByName(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockSearchRepository.searchUsersByName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
