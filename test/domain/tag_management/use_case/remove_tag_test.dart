import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
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
  final id = 1;
  test(
    "Should send the id of the Tag to be removed",
    () async {
      // Arrange
      when(mockTagRepository.removeTag(any)).thenAnswer((_) async => Right(null));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, Right(null));
      verify(mockTagRepository.removeTag(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
