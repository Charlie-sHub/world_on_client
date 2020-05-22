import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/get_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';

import '../repository/mock_comment_repository.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  GetExperienceComments useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = GetExperienceComments(mockCommentRepository);
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
  final Set<Comment> commentSet = {comment};
  test(
    "Should return a Set of Comments",
    () async {
      // Arrange
      when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => right(commentSet));
      // Act
      final result = await useCase(Params(experienceId: experienceId));
      // Assert
      expect(result, right(commentSet));
      verify(mockCommentRepository.getExperienceComments(any));
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
          when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(experienceId: experienceId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockCommentRepository.getExperienceComments(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        "Should return a CacheError is there's a problem with the cache",
        () async {
          // Arrange
          when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(experienceId: experienceId));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockCommentRepository.getExperienceComments(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
      test(
        "Should return a NotFoundError if the Experience has no Comments",
        () async {
          // Arrange
          when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(experienceId: experienceId));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockCommentRepository.getExperienceComments(any));
          verifyNoMoreInteractions(mockCommentRepository);
        },
      );
    },
  );
}
