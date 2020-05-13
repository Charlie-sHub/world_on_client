import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/use_case/use_case.dart';

import 'file:///C:/Users/Lucholito/Documents/WorldOn/Client/world_on_project/world_on/lib/core/common/domain/use_cases/tag_use_cases/get_all_tags.dart';

import '../../repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  GetAllTags useCase;

  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = GetAllTags(mockTagRepository);
    },
  );
  final tag1 = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  final tag2 = Tag(creationDate: DateTime.now(), creator: User(), id: 2, modificationDate: DateTime.now(), name: "Food");
  final tag3 = Tag(creationDate: DateTime.now(), creator: User(), id: 3, modificationDate: DateTime.now(), name: "Math");
  final tag4 = Tag(creationDate: DateTime.now(), creator: User(), id: 4, modificationDate: DateTime.now(), name: "Beach");
  final tag5 = Tag(creationDate: DateTime.now(), creator: User(), id: 5, modificationDate: DateTime.now(), name: "Film");
  final tag6 = Tag(creationDate: DateTime.now(), creator: User(), id: 6, modificationDate: DateTime.now(), name: "Shopping");
  final tagList = [tag1, tag2, tag3, tag4, tag5, tag6];
  test(
    "Should get the full list of tags",
    () async {
      // Arrange
      when(mockTagRepository.getAllTags()).thenAnswer((_) async => Right(tagList));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, Right(tagList));
      verify(mockTagRepository.getAllTags());
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
