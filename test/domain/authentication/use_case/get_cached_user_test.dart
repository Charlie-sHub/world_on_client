import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/repository/cached_credentials_repository_interface.dart';
import 'package:worldon/domain/authentication/use_case/get_cached_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  CachedCredentialsRepositoryInterface mockCachedUserRepository;
  GetCachedUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockCachedUserRepository = getIt<CachedCredentialsRepositoryInterface>();
      useCase = GetCachedUser(mockCachedUserRepository);
    },
  );
  final user = User.empty();
  test(
    "Should get the cached User",
    () async {
      // Arrange
      when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(getIt<NoParams>());
      // Assert
      expect(result, right(user));
      _verifyInteractions(mockCachedUserRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(getIt<NoParams>());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCachedUserRepository);
        },
      );
      test(
        "Should return a NoUserInCache in case there's no user in the cache",
        () async {
          // Arrange
          const failure = Failure.authenticationData(AuthenticationDataFailure.noUserInCache());
          when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(getIt<NoParams>());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCachedUserRepository);
        },
      );
    },
  );
}

void _verifyInteractions(CachedCredentialsRepositoryInterface mockCachedUserRepository) {
  verify(mockCachedUserRepository.getCachedUser());
  verifyNoMoreInteractions(mockCachedUserRepository);
}
