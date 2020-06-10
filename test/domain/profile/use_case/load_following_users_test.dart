import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_following_users.dart';

import '../../../constants.dart';
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
  final params = Params(id: 1);
  final followingUsers = {
    const User(
      id: null,
      name: null,
      username: null,
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
    "Should return a Set of Users if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => right(followingUsers));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(followingUsers));
      _verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockProfileRepository.loadFollowingUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.loadFollowingUsers(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
