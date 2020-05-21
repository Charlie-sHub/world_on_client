import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/edit_tag.dart';

import '../../core/repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  EditTag useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = EditTag(mockTagRepository);
    },
  );
  final tag = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  test(
    "Should send the Tag to be edited",
    () async {
      // Arrange
      when(mockTagRepository.editTag(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(tag: tag));
      // Assert
      expect(result, right(null));
      verify(mockTagRepository.editTag(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  group(
    "testing on failure",
    () {
      test(
        "Should return a ServerError in case there's some problem with the server",
        () async {
          // Arrange
          when(mockTagRepository.editTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(tag: tag));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.editTag(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        "Should return NameAlreadyInUse if the name given is already being used by other Tag",
        () async {
          // Arrange
          when(mockTagRepository.editTag(any)).thenAnswer((_) async => left(const CoreFailure.nameAlreadyInUse()));
          // Act
          final result = await useCase(Params(tag: tag));
          // Assert
          expect(result, left(const CoreFailure.nameAlreadyInUse()));
          verify(mockTagRepository.editTag(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
