import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/main_feed/use_case/fill_feed.dart';

import '../../../constants.dart';
import '../repository/mock_main_feed_repository.dart';

void main() {
  MockMainFeedRepository mockMainFeedRepository;
  FillFeed useCase;
  setUp(
    () {
      mockMainFeedRepository = MockMainFeedRepository();
      useCase = FillFeed(mockMainFeedRepository);
    },
  );
  final params = Params(userId: 1);
  final experienceList = [
    const Experience(
      id: null,
      name: null,
      description: null,
      imageURLs: null,
      latitude: null,
      longitude: null,
      location: null,
      creator: null,
      difficulty: null,
      creationDate: null,
      modificationDate: null,
      comments: null,
      objectives: null,
      rewards: null,
      tags: null,
      likedBy: null,
      doneBy: null,
    ),
  ];
  test(
    "Should return a List of Experiences",
    () async {
      // Arrange
      when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => right(experienceList));
      // Act
      final result = await useCase(params);
      // Assert
      expect(result, right(experienceList));
      _verifyInteractions(mockMainFeedRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          const coreFailure = CoreFailure.serverError();
          when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          const coreFailure = CoreFailure.cacheError();
          when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          const coreFailure = CoreFailure.notFoundError();
          when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => left(coreFailure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(coreFailure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockMainFeedRepository mockMainFeedRepository) {
  verify(mockMainFeedRepository.fillFeed(any));
  verifyNoMoreInteractions(mockMainFeedRepository);
}
