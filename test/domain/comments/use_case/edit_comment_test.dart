import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

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
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final comment = Comment(
    id: 1,
    user: creatorUser,
    content: "This is a test",
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
  );
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            comment: comment,
            user: creatorUser,
          ));
          // Assert
          expect(result, right(null));
          verify(mockCommentRepository.editComment(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            comment: comment,
            user: admin,
          ));
          // Assert
          expect(result, right(null));
          verify(mockCommentRepository.editComment(any));
          verifyNoMoreInteractions(mockCommentRepository);
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
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            comment: comment,
            user: admin,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockCommentRepository.editComment(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionUnAuthorized,
          () async {
          // Act
          final result = await useCase(Params(
            comment: comment,
            user: randomUser,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockCommentRepository);
        },
      );
    },
  );
}
