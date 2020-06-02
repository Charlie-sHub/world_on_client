import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_cached_user.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
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
  test(
    "Should get the cached User",
    () async {
      // Arrange
      when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => right(User()));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(User()));
      verify(mockCachedUserRepository.getCachedUser());
      verifyNoMoreInteractions(mockCachedUserRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockCachedUserRepository.getCachedUser());
          verifyNoMoreInteractions(mockCachedUserRepository);
        },
      );
      test(
        "Should return a NoUserInCache in case there's no user in the cache",
        () async {
          // Arrange
          when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => left(const AuthenticationFailure.noUserInCache()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const AuthenticationFailure.noUserInCache()));
          verify(mockCachedUserRepository.getCachedUser());
          verifyNoMoreInteractions(mockCachedUserRepository);
        },
      );
    },
  );
}
