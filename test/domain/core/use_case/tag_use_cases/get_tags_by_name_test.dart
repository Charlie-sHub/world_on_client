import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
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
  const name = "o";
  test(
    "Should get the Tags with the given name, or more accurately tags whose name contains the given string called name",
    () async {
      // Arrange
      when(mockTagRepository.getTagsByName(any)).thenAnswer((_) async => right(tagList));
      // Act
      final result = await useCase(Params(name: name));
      // Assert
      expect(result, right(tagList));
      verify(mockTagRepository.getTagsByName(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  group(
    "testing on failure",
    () {
      test(
        "Should return a CacheError in case there's some problem with the cache",
        () async {
          // Arrange
          when(mockTagRepository.getTagsByName(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockTagRepository.getTagsByName(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        "Should return a ServerError in case there's some problem with the server",
        () async {
          // Arrange
          when(mockTagRepository.getTagsByName(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.getTagsByName(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        "Should return a NotFoundError in case there are no tags with the given name",
        () async {
          // Arrange
          when(mockTagRepository.getTagsByName(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(name: name));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockTagRepository.getTagsByName(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
