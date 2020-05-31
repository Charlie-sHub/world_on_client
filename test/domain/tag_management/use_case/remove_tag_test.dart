import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/tag_management/use_case/remove_tag.dart';

import '../repository/mock_tag_management_repository.dart';

void main() {
  MockTagManagementRepository mockTagManagementRepository;
  RemoveTag useCase;
  setUp(
    () {
      mockTagManagementRepository = MockTagManagementRepository();
      useCase = RemoveTag(mockTagManagementRepository);
    },
  );
  const id = 1;
  test(
    "Should send the id of the Tag to be removed",
    () async {
      // Arrange
      when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => right(null));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, right(null));
      verify(mockTagManagementRepository.removeTag(any));
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
          when(mockTagManagementRepository.removeTag(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(id: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagManagementRepository.removeTag(any));
          verifyNoMoreInteractions(mockTagManagementRepository);
        },
      );
    },
  );
}
