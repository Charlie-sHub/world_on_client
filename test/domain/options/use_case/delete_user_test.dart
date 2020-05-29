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
  final userDeleting = User(id: 2, adminPowers: false);
  final userRandom = User(id: 3, adminPowers: false);
  final userToDelete = userDeleting;
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with an admin",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            userDeleting: admin,
            userToDelete: userToDelete,
          ));
          // Assert
          expect(result, right(null));
          verify(mockRemoteOptionsRepository.deleteUser(any));
          verifyNoMoreInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the same user",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            userDeleting: userDeleting,
            userToDelete: userToDelete,
          ));
          // Assert
          expect(result, right(null));
          verify(mockRemoteOptionsRepository.deleteUser(any));
          verifyNoMoreInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionUnAuthorized,
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => left(const CoreFailure.unAuthorizedError()));
          // Act
          final result = await useCase(Params(
            userDeleting: userRandom,
            userToDelete: userToDelete,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            userDeleting: userDeleting,
            userToDelete: userToDelete,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockRemoteOptionsRepository.deleteUser(any));
          verifyNoMoreInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}
