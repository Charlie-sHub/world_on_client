import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/get_user_comments.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../constant_descriptions.dart';
import '../../core/methods/create_stream.dart';
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
  final params = Params(userId: 1);
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
      when(mockCommentRepository.getUserComments(any)).thenAnswer((_) => createStream(right(commentSet)));
      // Act
      final result = await _act(useCase, params);
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
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: errorString));
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
    },
  );
}

Future<Either<Failure, Set<Comment>>> _act(GetUserComments useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, Set<Comment>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MockCommentRepository mockCommentRepository) {
  verify(mockCommentRepository.getUserComments(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
