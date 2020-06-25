import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/use_case/fill_feed.dart';

import '../../../constant_descriptions.dart';
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
  final params = NoParams();
  final experienceList = [
    const Experience(
      id: null,
      name: null,
      description: null,
      imageURLs: null,
      coordinates: null,
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
      when(mockMainFeedRepository.fillFeed()).thenAnswer((_) async => right(experienceList));
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
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: errorString));
          when(mockMainFeedRepository.fillFeed()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: errorString));
          when(mockMainFeedRepository.fillFeed()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
      test(
        descriptionNotFoundError,
        () async {
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockMainFeedRepository.fillFeed()).thenAnswer((_) async => left(failure));
          // Act
          final result = await useCase(params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
    },
  );
}

void _verifyInteractions(MockMainFeedRepository mockMainFeedRepository) {
  verify(mockMainFeedRepository.fillFeed());
  verifyNoMoreInteractions(mockMainFeedRepository);
}
