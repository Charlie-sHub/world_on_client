import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_followed_users.dart';

import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadFollowedUsers useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadFollowedUsers(mockProfileRepository);
    },
  );
  const id = 1;
  final followedUsers = {
    User(),
    User(),
    User(),
  };
  test(
    "Should return a Set of Users",
    () async {
      // Arrange
      when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => right(followedUsers));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(followedUsers));
      verify(mockProfileRepository.loadFollowedUsers(any));
      verifyNoMoreInteractions(mockProfileRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadFollowedUsers(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return CacheError if there's a problem with the cache",
        () async {
          // Arrange
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadFollowedUsers(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return NotFoundError if the User doesn't follow anyone",
        () async {
          // Arrange
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadFollowedUsers(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
