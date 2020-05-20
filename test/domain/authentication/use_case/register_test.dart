import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';

import '../repository/mock_authentication_repository.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  Register useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = Register(mockAuthenticationRepository);
    },
  );
  final user = User(
    id: 1,
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
    "Should send the User to the server to be registered",
    () async {
      // Arrange
      when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(Params(user: user));
      // Assert
      expect(result, right(user));
      verify(mockAuthenticationRepository.register(any));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
  group(
    "Testing on Failure",
    () {
      test(
        "Should return a ServerError if there's an unknown server error",
        () async {
          // Arrange
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(const AuthenticationFailure.serverError()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const AuthenticationFailure.serverError()));
          verify(mockAuthenticationRepository.register(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should return a EmailAlreadyInUse in case the Email used is already in use",
        () async {
          // Arrange
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(const AuthenticationFailure.emailAlreadyInUse()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const AuthenticationFailure.emailAlreadyInUse()));
          verify(mockAuthenticationRepository.register(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should return a UsernameAlreadyInUse in case the Username used is already in use",
        () async {
          // Arrange
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(const AuthenticationFailure.usernameAlreadyInUse()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const AuthenticationFailure.usernameAlreadyInUse()));
          verify(mockAuthenticationRepository.register(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}
