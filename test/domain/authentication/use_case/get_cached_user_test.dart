import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_cached_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../../lib/domain/authentication/repository/cached_user_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockCachedUserRepository mockCachedUserRepository;
  GetCachedUser useCase;
  setUp(
    () {
      mockCachedUserRepository = MockCachedUserRepository();
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
      final result = await useCase(NoParams());
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
          final result = await useCase(NoParams());
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
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(failure));
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
