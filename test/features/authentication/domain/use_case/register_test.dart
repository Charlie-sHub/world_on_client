import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/common/domain/entities/options.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/features/authentication/domain/use_case/register.dart';

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
      when(mockAuthenticationRepository.registerUser(any)).thenAnswer((realInvocation) async => Right(null));
      // Act
      final result = await useCase(Params(user: user));
      // Assert
      expect(result, Right(null));
      verify(mockAuthenticationRepository.registerUser(any));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
  // TODO Test on Failure
}
