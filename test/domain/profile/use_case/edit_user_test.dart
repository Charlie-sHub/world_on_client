import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
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
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final admin = _setUpUser(id: 2, adminPowers: true);
  final actualUser = _setUpUser(id: 3, adminPowers: false);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      id: 3,
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
          _verifyInteractions(mockProfileRepository);
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
          _verifyInteractions(mockProfileRepository);
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
          const coreFailure = CoreDataFailure.serverError();
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionUsernameAlreadyInUse,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.usernameAlreadyInUse();
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionEmailAlreadyInUse,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.emailAlreadyInUse();
          when(mockProfileRepository.editUser(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreDomainFailure.unAuthorizedError()));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
    },
  );
}

User _setUpUser({int id, bool adminPowers}) {
  return User(
    id: id,
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
    adminPowers: adminPowers,
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
}

void _verifyInteractions(MockProfileRepository mockProfileRepository) {
  verify(mockProfileRepository.editUser(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
