import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../repository/mock_comment_repository.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  PostComment useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = PostComment(mockCommentRepository);
    },
  );
  const experienceId = 1;
  final comment = Comment(
    id: 1,
    user: User(),
    content: "This is a test",
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
  );
  test(
    "Should return nothing if everything goes well",
    () async {
      // Arrange
      when(mockCommentRepository.postComment(
        comment: anyNamed("comment"),
        experienceId: anyNamed("experienceId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(
        comment: comment,
        experienceId: experienceId,
      ));
      // Assert
      expect(result, right(null));
      verify(mockCommentRepository.postComment(
        comment: anyNamed("comment"),
        experienceId: anyNamed("experienceId"),
      ));
      verifyNoMoreInteractions(mockCommentRepository);
    },
  );
  group(
    "Testing on failure",
    () {
      test(
        "Should return a ServerError if there's a problem with the server",
        () async {
          // Arrange
          when(mockCommentRepository.postComment(
            comment: anyNamed("comment"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            comment: comment,
            experienceId: experienceId,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockCommentRepository.postComment(
            comment: anyNamed("comment"),
            experienceId: anyNamed("experienceId"),
          ));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
    },
  );
}
