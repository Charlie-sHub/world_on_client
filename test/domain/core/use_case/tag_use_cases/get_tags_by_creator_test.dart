import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/tag.dart';
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
  final tag = Tag(
    creationDate: PastDate(DateTime.now()),
    creator: null,
    id: 1,
    modificationDate: PastDate(DateTime.now()),
    name: Name("Sports"),
  );
  final tagList = [
    tag,
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
      _verifyInteractions(mockTagRepository);
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
          _verifyInteractions(mockTagRepository);
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
          _verifyInteractions(mockTagRepository);
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
          _verifyInteractions(mockTagRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockTagRepository mockTagRepository) {
  verify(mockTagRepository.getTagsByCreator(any));
  verifyNoMoreInteractions(mockTagRepository);
}
