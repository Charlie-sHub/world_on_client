import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/use_case/delete_achievement.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_achievement_repository.dart';

void main() {
  MockAchievementRepository mockAchievementRepository;
  DeleteAchievement useCase;
  setUp(
    () {
      mockAchievementRepository = MockAchievementRepository();
      useCase = DeleteAchievement(mockAchievementRepository);
    },
  );
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final creatorUser = _setUpUser(id: 2, adminPowers: false);
  final admin = _setUpUser(id: 3, adminPowers: true);
  final achievement = Achievement(
    id: 1,
    name: null,
    description: null,
    imageURL: null,
    type: null,
    requisite: null,
    experiencePoints: null,
    creator: creatorUser,
    creationDate: null,
    modificationDate: null,
    tags: null,
  );
  Params setUpParams(User userRequesting) {
    return Params(
      achievement: achievement,
      userRequesting: userRequesting,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockAchievementRepository);
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
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockAchievementRepository.removeAchievement(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          verifyZeroInteractions(mockAchievementRepository);
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

void _verifyInteractions(MockAchievementRepository mockAchievementRepository) {
  verify(mockAchievementRepository.removeAchievement(any));
  verifyNoMoreInteractions(mockAchievementRepository);
}
