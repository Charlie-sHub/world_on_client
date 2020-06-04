import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/load_user.dart';

import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  LoadUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = LoadUser(mockProfileRepository);
    },
  );
  const id = 1;
  final user = User(
    id: 1,
    name: "test",
    username: "test",
    password: "test",
    email: "tes@test.test",
    birthday: DateTime.now(),
    description: "For testing",
    imageName: "test.jpg",
    level: 1,
    experiencePoints: 0,
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: DateTime.now(),
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
  );
  test(
    "Should return a User if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(user));
      verify(mockProfileRepository.loadUser(any));
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
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.loadUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return CacheError if there's a problem with the cache",
        () async {
          // Arrange
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockProfileRepository.loadUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return NotFoundError if there was no USer with the given id",
        () async {
          // Arrange
          when(mockProfileRepository.loadUser(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockProfileRepository.loadUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
