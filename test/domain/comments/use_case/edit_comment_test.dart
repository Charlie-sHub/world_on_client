import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';

import '../../../../lib/domain/comments/repository/comment_repository_mock.dart';
import '../../../test_descriptions.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  EditComment useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = EditComment(mockCommentRepository);
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final posterUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      comment: Comment.empty().copyWith(poster: posterUser),
    );
  }

  group(
    TestDescription.authorization,
    () {
      test(
        "$TestDescription.returnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(posterUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        "$TestDescription.returnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockCommentRepository);
        },
      );
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
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(posterUser));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        TestDescription.unAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
          verifyZeroInteractions(mockCommentRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockCommentRepository mockCommentRepository) {
  verify(mockCommentRepository.editComment(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
