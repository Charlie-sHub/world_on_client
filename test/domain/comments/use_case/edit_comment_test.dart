import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constants.dart';
import '../repository/mock_comment_repository.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  EditComment useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = EditComment(mockCommentRepository);
    },
  );
  final randomUser = setUpUser(id: 1, adminPowers: false);
  final creatorUser = setUpUser(id: 2, adminPowers: false);
  final admin = setUpUser(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      id: 1,
      poster: creatorUser,
      content: CommentContent("Test"),
      creationDate: PastDate(DateTime.now()),
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockCommentRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verifyInteractions(mockCommentRepository);
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
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockCommentRepository);
        },
      );
    },
  );
}

User setUpUser({int id, bool adminPowers}) {
  return User(
    id: id,
    name: null,
    username: null,
    password: null,
    email: null,
    birthday: null,
    description: null,
    imageName: null,
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

void verifyInteractions(MockCommentRepository mockCommentRepository) {
  verify(mockCommentRepository.editComment(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
