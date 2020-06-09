import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_blocked_users.dart';

import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadBlockedUsers useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadBlockedUsers(mockProfileRepository);
    },
  );
  final params = Params(id: 1);
  final blockedUsers = {
    const User(
      id: null,
      name: null,
      username: null,
      password: null,
      email: null,
      birthday: null,
      description: null,
      imageName: null,
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
    "Should return a Set of Users if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadBlockedUsers(any)).thenAnswer((_) async => right(blockedUsers));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(blockedUsers));
      verifyInteractions(mockProfileRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return ServerError if there's a problem with the server",
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockProfileRepository.loadBlockedUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return CacheError if there's a problem with the cache",
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockProfileRepository.loadBlockedUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return NotFoundError if the User has no blocked any User",
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockProfileRepository.loadBlockedUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadBlockedUsers(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
