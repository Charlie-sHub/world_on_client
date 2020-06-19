import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/use_case/search_users_by_username.dart';

import '../../../constant_descriptions.dart';
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
  final params = Params(username: username);
  final usersFoundByUsername = {
    User(
      id: null,
      name: null,
      username: username,
      password: null,
      email: null,
      birthday: null,
      description: null,
      imageURL: null,
      level: null,
      experiencePoints: null,
      privacy: null,
      adminPowers: null,
      enabled: null,
      lastLogin: null,
      creationDate: null,
      modificationDate: null,
      options: null,
      blockedUsers: null,
      followedUsers: null,
      devices: null,
      systems: null,
      interests: null,
      achievements: null,
      experiencesDone: null,
      experiencesLiked: null,
      experiencesToDo: null,
    ),
  };
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => right(usersFoundByUsername));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(usersFoundByUsername));
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
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: errorString));
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockSearchRepository.searchUsersByUserName(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockSearchRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockSearchRepository mockSearchRepository) {
  verify(mockSearchRepository.searchUsersByUserName(any));
  verifyNoMoreInteractions(mockSearchRepository);
}
