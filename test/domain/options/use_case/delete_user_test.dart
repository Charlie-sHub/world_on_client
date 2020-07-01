import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  RemoteOptionsRepositoryInterface mockRemoteOptionsRepository;
  DeleteUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockRemoteOptionsRepository = getIt<RemoteOptionsRepositoryInterface>();
      useCase = DeleteUser(mockRemoteOptionsRepository);
    },
  );
  final admin = _setUpUser(id: 1, adminPowers: true);
  final userToDelete = _setUpUser(id: 2, adminPowers: false);
  final userRandom = _setUpUser(id: 3, adminPowers: false);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      userToDelete: userToDelete,
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
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
          // Act
          final result = await useCase(setUpParams(userToDelete));
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
          when(mockRemoteOptionsRepository.deleteUser(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(userToDelete));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockRemoteOptionsRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(userRandom));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          // verifyZeroInteractions(mockRemoteOptionsRepository);
        },
      );
    },
  );
}

User _setUpUser({int id, bool adminPowers}) {
  return User.empty().copyWith(
    id: id,
    adminPowers: adminPowers,
  );
}

void _verifyInteractions(RemoteOptionsRepositoryInterface mockRemoteOptionsRepository) {
  verify(mockRemoteOptionsRepository.deleteUser(any));
  verifyNoMoreInteractions(mockRemoteOptionsRepository);
}
