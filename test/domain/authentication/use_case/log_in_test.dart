import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';

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
  final userToLogIn = User(
    username: "testuser",
    password: "1234",
  );
  final userLoggedIn = User(
    id: 2,
    name: "Test User",
    username: "testuser",
    password: "1234",
    email: "test@test.test",
    birthday: DateTime.now(),
    biography: "I test",
    imageName: "test.png",
    level: 1,
    experiencePoints: 0,
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: DateTime.now(),
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
    options: Options(),
  );
  test(
    "Should get the logged in User from a given User to log in",
    () async {
      // Arrange
      when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => right(userLoggedIn));
      // Act
      final result = await useCase(Params(user: userToLogIn));
      // Assert
      expect(result, right(userLoggedIn));
      verify(mockAuthenticationRepository.logIn(any));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => left(const AuthenticationFailure.serverError()));
          // Act
          final result = await useCase(Params(user: userToLogIn));
          // Assert
          expect(result, left(const AuthenticationFailure.serverError()));
          verify(mockAuthenticationRepository.logIn(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should return a InvalidEmailAndPasswordCombination in case either credential is wrong",
        () async {
          // Arrange
          when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => left(const AuthenticationFailure.invalidEmailAndPasswordCombination()));
          // Act
          final result = await useCase(Params(user: userToLogIn));
          // Assert
          expect(result, left(const AuthenticationFailure.invalidEmailAndPasswordCombination()));
          verify(mockAuthenticationRepository.logIn(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}
