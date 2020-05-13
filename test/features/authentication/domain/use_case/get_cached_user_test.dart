import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/features/authentication/domain/use_case/get_cached_user.dart';

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
      when(mockCachedUserRepository.getCachedUser()).thenAnswer((_) async => Right(User()));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, Right(User()));
      verify(mockCachedUserRepository.getCachedUser());
      verifyNoMoreInteractions(mockCachedUserRepository);
    },
  );
  // TODO Test on Failure
}
