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
  final params = Params(creatorId: 1);
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
      final result = await useCase(params);
      // Assert
      expect(result, right(tagList));
      verifyInteractions(mockTagRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionCacheError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.cacheError();
          when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockTagRepository);
        },
      );
      test(
        descriptionServerError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.serverError();
          when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockTagRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          // Arrange
          const coreFailure = CoreFailure.notFoundError();
          when(mockTagRepository.getTagsByCreator(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          verifyInteractions(mockTagRepository);
        },
      );
    },
  );
}

void verifyInteractions(MockTagRepository mockTagRepository) {
  verify(mockTagRepository.getTagsByCreator(any));
  verifyNoMoreInteractions(mockTagRepository);
}
