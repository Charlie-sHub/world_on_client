import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/core/entities/user.dart';
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
  final userLoggedIn = User(
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
  );
  test(
    "Should get the logged in User from a given User to log in",
    () async {
      // Arrange
      when(mockAuthenticationRepository.logIn(any)).thenAnswer((_) async => right(userLoggedIn));
      // Act
      final result = await useCase(params);
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
          final result = await useCase(params);
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
          final result = await useCase(params);
          // Assert
          expect(result, left(const AuthenticationFailure.invalidEmailAndPasswordCombination()));
          verify(mockAuthenticationRepository.logIn(any));
          verifyNoMoreInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}
