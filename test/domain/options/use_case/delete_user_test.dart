import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';

import '../../../constants.dart';
import '../repository/mock_remote_options_repository.dart';

void main() {
  MockRemoteOptionsRepository mockRemoteOptionsRepository;
  DeleteUser useCase;
  setUp(
    () {
      mockRemoteOptionsRepository = MockRemoteOptionsRepository();
      useCase = DeleteUser(mockRemoteOptionsRepository);
    },
  );
  final admin = User(id: 1, adminPowers: true);
  final userToDelete = User(id: 2, adminPowers: false);
  final userRandom = User(id: 3, adminPowers: false);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      userToDelete: userToDelete,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the same user",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(userToDelete));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockRemoteOptionsRepository);
        },
      );
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
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(userToDelete));
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(userRandom));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockRemoteOptionsRepository mockRemoteOptionsRepository) {
  verify(mockRemoteOptionsRepository.deleteUser(any));
  verifyNoMoreInteractions(mockRemoteOptionsRepository);
}
