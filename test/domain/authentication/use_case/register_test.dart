import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
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
    description: "I test",
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
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
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
        descriptionEmailAlreadyInUse,
        () async {
          // Arrange
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(const CoreFailure.emailAlreadyInUse()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const CoreFailure.emailAlreadyInUse()));
          verify(mockAuthenticationRepository.register(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
      test(
        descriptionUsernameAlreadyInUse,
        () async {
          // Arrange
          when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => left(const CoreFailure.usernameAlreadyInUse()));
          // Act
          final result = await useCase(Params(user: user));
          // Assert
          expect(result, left(const CoreFailure.usernameAlreadyInUse()));
          verify(mockAuthenticationRepository.register(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}
