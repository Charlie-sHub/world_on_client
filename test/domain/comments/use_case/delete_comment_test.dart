import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/comments/use_case/delete_comment.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';

import '../../../constant_descriptions.dart';
import '../repository/mock_comment_repository.dart';

void main() {
  MockCommentRepository mockCommentRepository;
  DeleteComment useCase;
  setUp(
    () {
      mockCommentRepository = MockCommentRepository();
      useCase = DeleteComment(mockCommentRepository);
    },
  );
  final randomUser = _setUpUser(id: 1, adminPowers: false);
  final creatorUser = _setUpUser(id: 2, adminPowers: false);
  final admin = _setUpUser(id: 3, adminPowers: true);
  final comment = Comment.empty().copyWith(poster: creatorUser);
  Params setUpParams(User userRequesting) {
    return Params(
      comment: comment,
      userRequesting: userRequesting,
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => right(unit));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(unit));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => right(unit));
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
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
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
          when(mockCommentRepository.removeComment(any)).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockCommentRepository);
        },
      );
      test(
        descriptionUnAuthorized,
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

User _setUpUser({int id, bool adminPowers}) {
  return User.empty().copyWith(
    id: id,
    adminPowers: adminPowers,
  );
}

void _verifyInteractions(MockCommentRepository mockCommentRepository) {
  verify(mockCommentRepository.removeComment(any));
  verifyNoMoreInteractions(mockCommentRepository);
}
