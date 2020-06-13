import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_cached_user.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../constants.dart';
import '../repository/mock_cached_user_repository.dart';

void main() {
  MockCachedUserRepository mockCachedUserRepository;
  GetCachedUser useCase;
  setUp(
    () {
      mockCachedUserRepository = MockCachedUserRepository();
      useCase = GetCachedUser(mockCachedUserRepository);
    },
  );
  const user = User(
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
  );
  test(
    "Should get the cached User",
    () async {
      // Arrange
      when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(user));
      _verifyInteractions(mockCachedUserRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.cacheError();
          when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockCachedUserRepository);
        },
      );
      test(
        "Should return a NoUserInCache in case there's no user in the cache",
        () async {
          // Arrange
          const authenticationFailure = AuthenticationDataFailure.noUserInCache();
          when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => left(authenticationFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(authenticationFailure));
          _verifyInteractions(mockCachedUserRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockCachedUserRepository mockCachedUserRepository) {
  verify(mockCachedUserRepository.getCachedUser());
  verifyNoMoreInteractions(mockCachedUserRepository);
}
