import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
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
import 'package:worldon/domain/profile/use_case/edit_user.dart';

import '../../../constants.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  EditUser useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = EditUser(mockProfileRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final actualUser = User(id: 2, adminPowers: false);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
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
      options: Options(),
      achievements: {},
      blockedUsers: {},
      devices: {},
      experiencesDone: {},
      experiencesLiked: {},
      experiencesToDo: {},
      followedUsers: {},
      interests: {},
      systems: {},
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the same user",
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(actualUser));
          // Assert
          expect(result, right(null));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
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
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionUsernameAlreadyInUse,
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.usernameAlreadyInUse()));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(const CoreFailure.usernameAlreadyInUse()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionEmailAlreadyInUse,
        () async {
          // Arrange
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(const CoreFailure.emailAlreadyInUse()));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(const CoreFailure.emailAlreadyInUse()));
          verify(mockProfileRepository.editUser(any));
          verifyNoMoreInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
    },
  );
}
