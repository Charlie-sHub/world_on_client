import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';

import '../../../constants.dart';
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
  final randomUser = User(id: 1, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final user = User(
    id: 2,
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
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            userRequesting: admin,
            userToEdit: user,
          ));
          // Assert
          expect(result, right(null));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the same user",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            userRequesting: user,
            userToEdit: user,
          ));
          // Assert
          expect(result, right(null));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
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
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            userRequesting: admin,
            userToEdit: user,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionUsernameAlreadyInUse,
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.usernameAlreadyInUse()));
          // Act
          final result = await useCase(Params(
            userRequesting: admin,
            userToEdit: user,
          ));
          // Assert
          expect(result, left(const CoreFailure.usernameAlreadyInUse()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionEmailAlreadyInUse,
          () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.emailAlreadyInUse()));
          // Act
          final result = await useCase(Params(
            userRequesting: admin,
            userToEdit: user,
          ));
          // Assert
          expect(result, left(const CoreFailure.emailAlreadyInUse()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionUnAuthorized,
          () async {
          final result = await useCase(Params(
            userRequesting: randomUser,
            userToEdit: user,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
    },
  );
}
