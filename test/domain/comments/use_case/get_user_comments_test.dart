import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/get_user_comments.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
import '../repository/mock_comment_repository.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  GetUserComments useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = GetUserComments(mockCommentRepository);
    },
  );
  const userId = 1;
  final comment = Comment(
    id: 1,
    user: User(),
    content: "This is a test",
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
  );
  final Set<Comment> commentSet = {comment};
  test(
    "Should return a Set of Comments",
    () async {
      // Arrange
      when(mockCommentRepository.getUserComments(any)).thenAnswer((_) async => right(commentSet));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(commentSet));
      verify(mockCommentRepository.getUserComments(any));
      verifyNoMoreInteractions(mockCommentRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockCommentRepository.getUserComments(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockCommentRepository.getUserComments(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockCommentRepository.getUserComments(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
    },
  );
}
