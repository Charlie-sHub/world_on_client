import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../../lib/domain/authentication/repository/authentication_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  GetLoggedInUser useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = GetLoggedInUser(mockAuthenticationRepository);
    },
  );
  final loggedInUser = User.empty();
  group(
    "There are two correct responses from this use-case either some User or none",
    () {
      test(
        "Should get loggedInUser",
        () async {
          // Arrange
          final someUser = some<User>(loggedInUser);
          when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => right(someUser));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, right(someUser));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should get loggedInUser",
        () async {
          // Arrange
          final noUser = none<User>();
          when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => right(noUser));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, right(noUser));
          _verifyInteractions(mockAuthenticationRepository);
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
          when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockAuthenticationRepository mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.getLoggedInUser());
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
