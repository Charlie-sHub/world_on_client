import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
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
      when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => Right(user));
      // Act
      final result = await useCase(Params(user: user));
      // Assert
      expect(result, Right(user));
      verify(mockAuthenticationRepository.register(any));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
  // TODO Test on Failure
}
