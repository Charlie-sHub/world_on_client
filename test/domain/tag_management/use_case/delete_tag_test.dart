import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/delete_tag.dart';

import '../../../constants.dart';
import '../repository/mock_tag_management_repository.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  DeleteTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = DeleteTag(mockTagManagementRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  final tag = Tag(id: 1, creator: creatorUser);
  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            user: creatorUser,
            tag: tag,
          ));
          // Assert
          expect(result, right(null));
          verify(mockTagManagementRepository.removeTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(Params(
            user: admin,
            tag: tag,
          ));
          // Assert
          expect(result, right(null));
          verify(mockTagManagementRepository.removeTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
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
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(
            user: admin,
            tag: tag,
          ));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagManagementRepository.removeTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
          () async {
          // Act
          final result = await useCase(Params(
            user: randomUser,
            tag: tag,
          ));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}
