import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/get_tags_by_creator.dart';

import '../../repository/mock_tag_repository.dart';

void main() {
  MockTagRepository mockTagRepository;
  GetTagsByCreator useCase;
  setUp(
    () {
      mockTagRepository = MockTagRepository();
      useCase = GetTagsByCreator(mockTagRepository);
    },
  );
  final id = 1;
  final tag1 = Tag(creationDate: DateTime.now(), creator: User(), id: 1, modificationDate: DateTime.now(), name: "Sports");
  final tag2 = Tag(creationDate: DateTime.now(), creator: User(), id: 2, modificationDate: DateTime.now(), name: "Food");
  final tag3 = Tag(creationDate: DateTime.now(), creator: User(), id: 3, modificationDate: DateTime.now(), name: "Math");
  final tag4 = Tag(creationDate: DateTime.now(), creator: User(), id: 4, modificationDate: DateTime.now(), name: "Beach");
  final tag5 = Tag(creationDate: DateTime.now(), creator: User(), id: 5, modificationDate: DateTime.now(), name: "Film");
  final tag6 = Tag(creationDate: DateTime.now(), creator: User(), id: 6, modificationDate: DateTime.now(), name: "Shopping");
  final tagList = [tag1, tag2, tag3, tag4, tag5, tag6];
  test(
    "Should get a List of Tags by a given creator id",
    () async {
      // Arrange
      when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => Right(tagList));
      // Act
      final result = await useCase(Params(creatorId: id));
      // Assert
      expect(result, Right(tagList));
      verify(mockTagRepository.getTagsByCreator(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  // TODO Test on Failure
}
