import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

import '../../../constants.dart';
import '../repository/mock_authentication_repository.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  LogIn useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = LogIn(mockAuthenticationRepository);
    },
  );
  final params = Params(
    username: Name("Test User"),
    password: Password("abcd*1234"),
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(null));
      _verifyInteractions(mockAuthenticationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.serverError();
          when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should return a InvalidEmailAndPasswordCombination in case either credential is wrong",
        () async {
          // Arrange
          const authenticationFailure = AuthenticationDataFailure.invalidCredentials();
          when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => left(authenticationFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(authenticationFailure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockAuthenticationRepository mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.logIn(any));
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
