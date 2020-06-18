import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

import '../../../constants.dart';
import '../repository/mock_authentication_repository.dart';

void main() {
  MockAuthenticationRepository mockAuthenticationRepository;
  GetLoggedInUser useCase;
  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      useCase = GetLoggedInUser(mockAuthenticationRepository);
    },
  );
  const loggedInUser = User(
    id: null,
    name: null,
    username: null,
    password: null,
    email: null,
    birthday: null,
    description: null,
    imageURL: null,
    level: null,
    experiencePoints: null,
    privacy: null,
    adminPowers: null,
    enabled: null,
    lastLogin: null,
    creationDate: null,
    modificationDate: null,
    options: null,
    blockedUsers: null,
    followedUsers: null,
    devices: null,
    systems: null,
    interests: null,
    achievements: null,
    experiencesDone: null,
    experiencesLiked: null,
    experiencesToDo: null,
  );
  group(
    "There are two correct responses from this use-case either some User or none",
    () {
      test(
        "Should get loggedInUser",
        () async {
          // Arrange
          final someUser = some<User>(loggedInUser);
          when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => right(someUser));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, right(someUser));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
      test(
        "Should get loggedInUser",
        () async {
          // Arrange
          final noUser = none<User>();
          when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => right(noUser));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, right(noUser));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreDataFailure = CoreDataFailure.serverError();
          when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => left(coreDataFailure));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(coreDataFailure));
          _verifyInteractions(mockAuthenticationRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockAuthenticationRepository mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.getLoggedInUser());
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
