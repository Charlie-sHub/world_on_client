import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../constants.dart';
import '../repository/mock_authentication_repository.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  LogInGoogle useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = LogInGoogle(mockAuthenticationRepository);
    },
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockAuthenticationRepository.logInGoogle()).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(null));
      verify(mockAuthenticationRepository.logInGoogle());
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "Should get a cancelled by user authentication failure",
        () async {
          // Arrange
          when(mockAuthenticationRepository.logInGoogle()).thenAnswer((_) async => left(const AuthenticationFailure.cancelledByUser()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const AuthenticationFailure.cancelledByUser()));
          verify(mockAuthenticationRepository.logInGoogle());
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockAuthenticationRepository.logInGoogle()).thenAnswer((_) async => left(const AuthenticationFailure.serverError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const AuthenticationFailure.serverError()));
          verify(mockAuthenticationRepository.logInGoogle());
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}
