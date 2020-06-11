import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/get_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constants.dart';
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
  final params = Params(experienceId: 1);
  final comment = Comment(
    id: 1,
    poster: null,
    content: CommentContent("This is a test"),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
  );
  final Set<Comment> commentSet = {comment};
  test(
    "Should return a Set of Comments",
    () async {
      // Arrange
      when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => right(commentSet));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(commentSet));
      _verifyInteractions(mockCommentRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.serverError();
          when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.cacheError();
          when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreDataFailure.notFoundError();
          when(mockCommentRepository.getExperienceComments(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockCommentRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockCommentRepository mockCommentRepository) {
  verify(mockCommentRepository.getExperienceComments(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
