import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  RemoteOptionsRepositoryInterface mockRemoteOptionsRepository;
  GetLoggedInUser getLoggedInUser;
  DeleteUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockRemoteOptionsRepository = getIt<RemoteOptionsRepositoryInterface>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      useCase = DeleteUser(mockRemoteOptionsRepository);
    },
  );
  final admin = User.empty().copyWith(id: 1, adminPowers: true);
  final userToDelete = User.empty().copyWith(id: 2, adminPowers: false);
  final userRandom = User.empty().copyWith(id: 3, adminPowers: false);
  final params = Params(userToDelete: userToDelete);
  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(admin));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        "${TestDescription.returnNothing}, testing with the same user",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(userToDelete));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockRemoteOptionsRepository);
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
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(userToDelete));
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          //
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(userRandom));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
        },
      );
      test(
        TestDescription.throwUnAuthenticated,
        () async {
          // Arrange
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          // Act
          try {
            await useCase(params);
            fail(TestDescription.notThrown);
          } catch (error) {
            // Assert
            expect(error, isInstanceOf<UnAuthenticatedError>());
          }
        },
      );
    },
  );
}

void _verifyInteractions(RemoteOptionsRepositoryInterface mockRemoteOptionsRepository) {
  verify(mockRemoteOptionsRepository.deleteUser(any));
  verifyNoMoreInteractions(mockRemoteOptionsRepository);
}
