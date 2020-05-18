import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/tag_management/use_case/create_tag.dart';

import '../../core/repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  CreateTag useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = CreateTag(mockTagRepository);
    },
  );
  final tag = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  test(
    "Should send the Tag to be created",
    () async {
      // Arrange
      when(mockTagRepository.createTag(any)).thenAnswer((_) async => Right(null));
      // Act
      final result = await useCase(Params(tag: tag));
      // Assert
      expect(result, Right(null));
      verify(mockTagRepository.createTag(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
