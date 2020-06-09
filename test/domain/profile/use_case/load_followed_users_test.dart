import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_followed_users.dart';

import '../../../constants.dart';
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
  final params = Params(id: 1);
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
      final result = await useCase(params);
      // Assert
      expect(result, right(followedUsers));
      verifyInteractions(mockProfileRepository);
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
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockProfileRepository.loadFollowedUsers(any)).thenAnswer((_) async => left(coreFailure));
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
  verify(mockProfileRepository.loadFollowedUsers(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
