import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';

import '../../../constants.dart';
import '../repository/mock_tag_management_repository.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  EditTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = EditTag(mockTagManagementRepository);
    },
  );
  final randomUser = User(id: 1, adminPowers: false);
  final creatorUser = User(id: 2, adminPowers: false);
  final admin = User(id: 3, adminPowers: true);
  Params setUpParams(User userRequesting) {
    return Params(
      userRequesting: userRequesting,
      creator: creatorUser,
      id: 1,
      name: Name("Test"),
      creationDate: PastDate(DateTime.now()),
    );
  }

  group(
    descriptionAuthorization,
    () {
      test(
        "$descriptionReturnNothing, testing with the creator",
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, right(null));
          verify(mockTagManagementRepository.editTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        "$descriptionReturnNothing, testing with the admin",
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => right(null));
          // Act
          final result = await useCase(setUpParams(admin));
          // Assert
          expect(result, right(null));
          verify(mockTagManagementRepository.editTag(any));
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
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagManagementRepository.editTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionNameAlreadyInUse,
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(setUpParams(creatorUser));
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockTagManagementRepository.editTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        descriptionUnAuthorized,
        () async {
          // Act
          final result = await useCase(setUpParams(randomUser));
          // Assert
          expect(result, left(const CoreFailure.unAuthorizedError()));
          verifyZeroInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}
