import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  CommentRepositoryInterface mockCommentRepository;
  GetLoggedInUser getLoggedInUser;
  EditComment useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockCommentRepository = getIt<CommentRepositoryInterface>();
      getLoggedInUser = getIt<GetLoggedInUser>();
      useCase = EditComment(mockCommentRepository);
    },
  );
  final randomUser = User.empty().copyWith(id: 1, adminPowers: false);
  final posterUser = User.empty().copyWith(id: 2, adminPowers: false);
  final admin = User.empty().copyWith(id: 3, adminPowers: true);
  final params = Params(comment: Comment.empty().copyWith(poster: posterUser));

  group(
    TestDescription.authorization,
    () {
      test(
        "${TestDescription.returnNothing}, testing with the creator",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(posterUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        "${TestDescription.returnNothing}, testing with the admin",
        () async {
          // Arrange
          when(mockCommentRepository.editComment(any)).thenAnswer((_) async => right(unit));
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(admin));
          // Act
          final result = await useCase(params);
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
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(posterUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        "${TestDescription.unAuthorized} with randomUser",
        () async {
          // Arrange
          when(getLoggedInUser.call(any)).thenAnswer((_) async => some(randomUser));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(const Failure.coreDomain(CoreDomainFailure.unAuthorizedError())));
        },
      );
      test(
        TestDescription.throwUnAuthenticated,
        () async {
          // Arrange
          when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
          // Act
          try {
            await useCase(params);
            fail(TestDescription.notThrown);
          } catch (error) {
            // Assert
            expect(error, isInstanceOf<UnAuthenticatedError>());
          }
        },
      );
    },
  );
}

void _verifyInteractions(CommentRepositoryInterface mockCommentRepository) {
  verify(mockCommentRepository.editComment(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
