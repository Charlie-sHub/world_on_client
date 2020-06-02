import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_following_users.dart';

import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadFollowingUsers useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadFollowingUsers(mockProfileRepository);
    },
  );
  const id = 1;
  final followingUsers = {
    User(),
    User(),
    User(),
  };
  test(
    "Should return a Set of Users if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => right(followingUsers));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(followingUsers));
      verify(mockProfileRepository.loadFollowingUsers(any));
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
          when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadFollowingUsers(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return CacheError if there's a problem with the cache",
        () async {
          // Arrange
          when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadFollowingUsers(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return NotFoundError if the User has no followers",
        () async {
          // Arrange
          when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadFollowingUsers(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
