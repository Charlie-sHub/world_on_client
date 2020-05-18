import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/get_tags_by_name.dart';

import '../../repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  GetTagsByName useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = GetTagsByName(mockTagRepository);
    },
  );
  final tag1 = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  final tag2 = Tag(creationDate: DateTime.now(), creator: User(), id: 2, modificationDate: DateTime.now(), name: "Food");
  final tag3 = Tag(creationDate: DateTime.now(), creator: User(), id: 3, modificationDate: DateTime.now(), name: "Math");
  final tag4 = Tag(creationDate: DateTime.now(), creator: User(), id: 6, modificationDate: DateTime.now(), name: "Shopping");
  final tagList = [tag1, tag2, tag3, tag4];
  final name = "o";
  test(
    "Should get the Tags with the given name, or more accurately tags whose name contains the given string called name",
    () async {
      // Arrange
      when(mockTagRepository.getTagsByName(any)).thenAnswer((_) async => Right(tagList));
      // Act
      final result = await useCase(Params(name: name));
      // Assert
      expect(result, Right(tagList));
      verify(mockTagRepository.getTagsByName(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
