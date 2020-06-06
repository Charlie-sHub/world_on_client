import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';

import '../../../constants.dart';
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
  final params = Params(
    experienceId: 1,
    user: User(),
    content: CommentContent("This is a test"),
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockCommentRepository.postComment(
        comment: anyNamed("comment"),
        experienceId: anyNamed("experienceId"),
      )).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(params);
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
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockCommentRepository.postComment(
            comment: anyNamed("comment"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(params);
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
