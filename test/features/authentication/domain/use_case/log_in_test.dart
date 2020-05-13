import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/common/domain/entities/options.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/features/authentication/domain/use_case/log_in.dart';

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
      when(mockAuthenticationRepository.logInUser(any)).thenAnswer((_) async => Right(userLoggedIn));
      // Act
      final result = await useCase(Params(user: userToLogIn));
      // Assert
      expect(result, Right(userLoggedIn));
      verify(mockAuthenticationRepository.logInUser(any));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
  // TODO Test on Failure
}
