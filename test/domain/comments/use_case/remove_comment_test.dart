import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/remove_comment.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../../../constants.dart';
import '../repository/mock_comment_repository.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  RemoveComment useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = RemoveComment(mockCommentRepository);
    },
  );
  const commentId = 1;
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(id: commentId));
      // Assert
      expect(result, right(null));
      verify(mockCommentRepository.removeComment(any));
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
          when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: commentId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockCommentRepository.removeComment(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(id: commentId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockCommentRepository.removeComment(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
    },
  );
}
