import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';

import '../../../constants.dart';
import '../repository/mock_tag_management_repository.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  DeleteTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = DeleteTag(mockTagManagementRepository);
    },
  );
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final creatorUser = _setUpUser(id: 2, adminPowers: false);
  final admin = _setUpUser(id: 3, adminPowers: true);
  final tag = Tag(
    id: 1,
    creator: creatorUser,
    creationDate: null,
    modificationDate: null,
    name: null,
  );
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      tag: tag,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(null));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          _verifyInteractions(mockTagManagementRepository);
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
          const coreFailure = CoreFailure.serverError();
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockTagManagementRepository);
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

void _verifyInteractions(MockTagManagementRepository mockTagManagementRepository) {
  verify(mockTagManagementRepository.removeTag(any));
  verifyNoMoreInteractions(mockTagManagementRepository);
}
