import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  AuthenticationRepositoryInterface mockAuthenticationRepository;
  LogIn useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAuthenticationRepository = getIt<AuthenticationRepositoryInterface>();
      useCase = LogIn(mockAuthenticationRepository);
    },
  );
  final params = Params(
    email: EmailAddress("Test@test.test"),
    password: Password("abcd*1234"),
  );
  test(
    TestDescription.returnNothing,
    () async {
      // Arrange
      when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
      _verifyInteractions(mockAuthenticationRepository);
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
          when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should return a InvalidEmailAndPasswordCombination in case either credential is wrong",
        () async {
          // Arrange
          const failure = Failure.authenticationData(AuthenticationDataFailure.invalidCredentials());
          when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(AuthenticationRepositoryInterface mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.logIn(any));
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
