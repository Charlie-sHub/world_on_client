import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/remove_tag.dart';

import '../../core/repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  RemoveTag useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = RemoveTag(mockTagRepository);
    },
  );
  const id = 1;
  test(
    "Should send the id of the Tag to be removed",
    () async {
      // Arrange
      when(mockTagRepository.removeTag(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(null));
      verify(mockTagRepository.removeTag(any));
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
          when(mockTagRepository.removeTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.removeTag(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
