import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/profile/use_case/delete_experience.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_profile_repository.dart';

void main() {
  MockProfileRepository mockProfileRepository;
  DeleteExperience useCase;
  setUp(
    () {
      mockProfileRepository = MockProfileRepository();
      useCase = DeleteExperience(mockProfileRepository);
    },
  );
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final creatorUser = _setUpUser(id: 2, adminPowers: false);
  final admin = _setUpUser(id: 3, adminPowers: true);
  final experience = Experience(
    id: 1,
    name: null,
    description: null,
    imageURLs: null,
    coordinates: null,
    location: null,
    creator: creatorUser,
    difficulty: null,
    creationDate: null,
    modificationDate: null,
    comments: null,
    objectives: null,
    rewards: null,
    tags: null,
    likedBy: null,
    doneBy: null,
  );
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      experience: experience,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockProfileRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockProfileRepository);
        },
      );
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        "$descriptionUnAuthorized, random user deleting the experience",
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          verifyZeroInteractions(mockProfileRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockProfileRepository.deleteExperience(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockProfileRepository);
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
  verify(mockProfileRepository.deleteExperience(any));
  verifyNoMoreInteractions(mockProfileRepository);
}
