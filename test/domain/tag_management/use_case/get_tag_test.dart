import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/tag_management/use_case/get_tag.dart';

import '../../core/repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  GetTag useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = GetTag(mockTagRepository);
    },
  );
  final id = 1;
  final tag = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  test(
    "Should get the Tag with a given id if successful",
    () async {
      // Arrange
      when(mockTagRepository.getTag(any)).thenAnswer((_) async => Right(tag));
      // Act
      final result = await useCase(Params(id: id));
      // Assert
      expect(result, Right(tag));
      verify(mockTagRepository.getTag(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
