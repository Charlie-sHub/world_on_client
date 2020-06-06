import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

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
  final params = Params(
    name: Name("Test User"),
    username: Name("TestUser"),
    password: Password("abcd*1234"),
    email: EmailAddress("test@test.test"),
    birthday: PastDate(DateTime.now()),
    description: EntityDescription("For testing"),
    imageName: "test.png",
  );
  final user = User(
    id: 2,
    name: Name("Test User"),
    username: Name("TestUser"),
    password: Password("abcd*1234"),
    email: EmailAddress("test@test.test"),
    birthday: PastDate(DateTime.now()),
    description: EntityDescription("For testing"),
    imageName: "test.png",
    level: UserLevel(1),
    experiencePoints: ExperiencePoints(1),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    options: Options(),
  );
  test(
    "Should send the User to the server to be registered",
    () async {
      // Arrange
      when(mockAuthenticationRepository.register(any)).thenAnswer((_) async => right(user));
      // Act
      final result = await useCase(params);
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
          final result = await useCase(params);
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
          final result = await useCase(params);
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
          final result = await useCase(params);
          // Assert
          expect(result, left(const CoreFailure.usernameAlreadyInUse()));
          verify(mockAuthenticationRepository.register(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}
