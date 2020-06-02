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
  const userId = 1;
  final experienceList = [
    Experience(),
    Experience(),
    Experience(),
  ];
  test(
    "Should return a List of Experiences",
    () async {
      // Arrange
      when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => right(experienceList));
      // Act
      final result = await useCase(Params(userId: userId));
      // Assert
      expect(result, right(experienceList));
      verify(mockMainFeedRepository.fillFeed(any));
      verifyNoMoreInteractions(mockMainFeedRepository);
    },
  );
  group(
    descriptionGroupOnFailure,
    () {
      test(
        descriptionServerError,
        () async {
          when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => left(const CoreFailure.serverError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.serverError()));
          verify(mockMainFeedRepository.fillFeed(any));
          verifyNoMoreInteractions(mockMainFeedRepository);
        },
      );
      test(
        descriptionCacheError,
        () async {
          when(mockMainFeedRepository.fillFeed(any)).thenAnswer((_) async => left(const CoreFailure.cacheError()));
          // Act
          final result = await useCase(Params(userId: userId));
          // Assert
          expect(result, left(const CoreFailure.cacheError()));
          verify(mockMainFeedRepository.fillFeed(any));
          verifyNoMoreInteractions(mockMainFeedRepository);
        },
      );
      // Testing for NotFoundError will not be necessary, as an empty list is a perfectly fine result
    },
  );
}
