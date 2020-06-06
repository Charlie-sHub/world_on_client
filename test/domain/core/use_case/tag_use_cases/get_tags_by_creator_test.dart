import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/tag_use_cases/get_tags_by_creator.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import '../../../../constants.dart';
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
  const id = 1;
  final tag1 = Tag(creationDate: PastDate(DateTime.now()), creator: User(), id: 1, modificationDate: PastDate(DateTime.now()), name: Name("Sports"));
  final tag2 = Tag(creationDate: PastDate(DateTime.now()), creator: User(), id: 2, modificationDate: PastDate(DateTime.now()), name: Name("Food"));
  final tag3 = Tag(creationDate: PastDate(DateTime.now()), creator: User(), id: 3, modificationDate: PastDate(DateTime.now()), name: Name("Math"));
  final tagList = [
    tag1,
    tag2,
    tag3,
  ];
  test(
    "Should get a List of Tags by a given creator id",
    () async {
      // Arrange
      when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => right(tagList));
      // Act
      final result = await useCase(Params(creatorId: id));
      // Assert
      expect(result, right(tagList));
      verify(mockTagRepository.getTagsByCreator(any));
      verifyNoMoreInteractions(mockTagRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(creatorId: id));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockTagRepository.getTagsByCreator(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(creatorId: id));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockTagRepository.getTagsByCreator(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => left(const CoreFailure.notFoundError()));
          // Act
          final result = await useCase(Params(creatorId: id));
          // Assert
          expect(result, left(const CoreFailure.notFoundError()));
          verify(mockTagRepository.getTagsByCreator(any));
          verifyNoMoreInteractions(mockTagRepository);
        },
      );
    },
  );
}
