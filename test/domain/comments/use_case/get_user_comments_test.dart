import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/get_user_comments.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';

import '../../../../lib/domain/comments/repository/comment_repository_mock.dart';
import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

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
  final Set<Comment> commentSet = {Comment.empty()};
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
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        TestDescription.cacheError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockCommentRepository.getUserComments(any)).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        TestDescription.notFoundError,
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
