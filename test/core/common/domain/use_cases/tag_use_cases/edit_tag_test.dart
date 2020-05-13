import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/common/domain/use_cases/tag_use_cases/edit_tag.dart';

import '../../repository/mock_tag_repository.dart';

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
      when(mockTagRepository.editTag(any)).thenAnswer((_) async => Right(null));
      // Act
      final result = await useCase(Params(tag: tag));
      // Assert
      expect(result, Right(null));
      verify(mockTagRepository.editTag(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
}
