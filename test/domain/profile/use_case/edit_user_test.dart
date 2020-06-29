import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/profile/use_case/edit_user.dart';

import '../../../../lib/domain/profile/repository/profile_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  EditUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = EditUser(mockProfileRepository);
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final admin = User.empty().copyWith(id: 2, adminPowers: true);
  final actualUser = User.empty().copyWith(id: 3, adminPowers: false);
  final emailAddress = EmailAddress("test@test.test");
  final username = Name("TestUser");
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      userToEdit: actualUser,
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "$TestDescription.returnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "$TestDescription.returnNothing, testing with the same user",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(actualUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        TestDescription.usernameAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.usernameAlreadyInUse(username: username));
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        TestDescription.emailAlreadyInUse,
        () async {
          // Arrange
          final failure = Failure.coreData(CoreDataFailure.emailAlreadyInUse(email: emailAddress));
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.editUser(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
