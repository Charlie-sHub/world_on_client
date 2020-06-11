import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
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
    imageURL: "test.png",
    level: UserLevel(1),
    experiencePoints: ExperiencePoints(1),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    options: null,
    achievements: null,
    blockedUsers: null,
    devices: null,
    experiencesDone: null,
    experiencesLiked: null,
    experiencesToDo: null,
    followedUsers: null,
    interests: null,
    systems: null,
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
          const authenticationFailure = AuthenticationFailure.invalidEmailAndPasswordCombination();
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
