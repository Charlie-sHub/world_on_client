import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/get_all_tags.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

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
      when(mockTagRepository.getAllTags()).thenAnswer((_) async => right(tagList));
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, right(tagList));
      verify(mockTagRepository.getAllTags());
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
          when(mockTagRepository.getAllTags()).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockTagRepository.getAllTags());
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        "Should return a ServerError in case there's some problem with the server",
        () async {
          // Arrange
          when(mockTagRepository.getAllTags()).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.getAllTags());
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        "Should return a NotFoundError in case there are no tags",
        () async {
          // Arrange
          when(mockTagRepository.getAllTags()).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(NoParams());
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockTagRepository.getAllTags());
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
