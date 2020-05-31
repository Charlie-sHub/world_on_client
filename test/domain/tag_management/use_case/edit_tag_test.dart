import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';

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
  final tag = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  test(
    "Should send the Tag to be edited",
    () async {
      // Arrange
      when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(tag: tag));
      // Assert
      expect(result, right(null));
      verify(mockTagManagementRepository.editTag(any));
      verifyNoMoreInteractions(mockTagManagementRepository);
    },
  );
  group(
    "testing on failure",
    () {
      test(
        "Should return a ServerError in case there's some problem with the server",
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(tag: tag));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagManagementRepository.editTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
      test(
        "Should return NameAlreadyInUse if the name given is already being used by other Tag",
        () async {
          // Arrange
          when(mockTagManagementRepository.editTag(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(Params(tag: tag));
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockTagManagementRepository.editTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}
