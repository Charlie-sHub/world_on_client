import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';

import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  EditUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = EditUser(mockProfileRepository);
    },
  );
  final user = User(
    id: 1,
    name: "test",
    username: "test",
    password: "test",
    email: "tes@test.test",
    birthday: DateTime.now(),
    biography: "For testing",
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
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(user: user));
      // Assert
      expect(result, right(null));
      verify(mockProfileRepository.editUser(any));
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
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "Should return UsernameAlreadyInUse if the username sent is already being used by another User",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.usernameAlreadyInUse()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const CoreFailure.usernameAlreadyInUse()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
    },
  );
}
