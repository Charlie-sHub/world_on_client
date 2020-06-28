import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';

import '../../../constant_descriptions.dart';
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
    comment: Comment.empty(),
  );
  test(
    descriptionReturnNothing,
    () async {
      // Arrange
      when(mockCommentRepository.postComment(
        comment: anyNamed("comment"),
        experienceId: anyNamed("experienceId"),
      )).thenAnswer((_) async => right(unit));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(unit));
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
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockCommentRepository.postComment(
            comment: anyNamed("comment"),
            experienceId: anyNamed("experienceId"),
          )).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockCommentRepository mockCommentRepository) {
  verify(mockCommentRepository.postComment(
    comment: anyNamed("comment"),
    experienceId: anyNamed("experienceId"),
  ));
  verifyNoMoreInteractions(mockCommentRepository);
}
