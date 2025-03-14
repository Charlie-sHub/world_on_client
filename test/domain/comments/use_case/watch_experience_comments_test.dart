import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/comments/use_case/watch_experience_comments.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  CommentRepositoryInterface mockCommentRepository;
  WatchExperienceComments useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockCommentRepository = getIt<CommentRepositoryInterface>();
      useCase = WatchExperienceComments(mockCommentRepository);
    },
  );
  final params = Params(experienceId: UniqueId());
  final commentList = KtList.of(Comment.empty());
  test(
    "Should return a Set of Comments",
    () async {
      // Arrange
      when(mockCommentRepository.watchExperienceComments(any)).thenAnswer((_) => createStream(right(commentList)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(commentList));
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
          when(mockCommentRepository.watchExperienceComments(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockCommentRepository.watchExperienceComments(any)).thenAnswer((_) => createStream(left(failure)));
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
          when(mockCommentRepository.watchExperienceComments(any)).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, KtList<Comment>>> _act(WatchExperienceComments useCase, Params params) async {
  final resultStream = useCase(params);
  Either<Failure, KtList<Comment>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(CommentRepositoryInterface mockCommentRepository) {
  verify(mockCommentRepository.watchExperienceComments(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
