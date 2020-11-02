import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';
import 'package:worldon/domain/main_feed/use_case/watch_feed.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  MainFeedRepositoryInterface mockMainFeedRepository;
  NoParams params;
  WatchFeed useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockMainFeedRepository = getIt<MainFeedRepositoryInterface>();
      params = getIt<NoParams>();
      useCase = WatchFeed(mockMainFeedRepository);
    },
  );
  final experienceList = KtList.of(Experience.empty());
  test(
    "Should return a List of Experiences",
    () async {
      // Arrange
      when(mockMainFeedRepository.watchFeed()).thenAnswer((_) => createStream(right(experienceList)));
      // Act
      final result = await _act(useCase, params);
      // Assert
      expect(result, right(experienceList));
      _verifyInteractions(mockMainFeedRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockMainFeedRepository.watchFeed()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
      test(
        TestDescription.cacheError,
        () async {
          const failure = Failure.coreData(CoreDataFailure.cacheError(errorString: TestDescription.errorString));
          when(mockMainFeedRepository.watchFeed()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockMainFeedRepository.watchFeed()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase, params);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockMainFeedRepository);
        },
      );
    },
  );
}

Future<Either<Failure, KtList<Experience>>> _act(WatchFeed useCase, NoParams params) async {
  final resultStream = useCase(params);
  Either<Failure, KtList<Experience>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(MainFeedRepositoryInterface mockMainFeedRepository) {
  verify(mockMainFeedRepository.watchFeed());
  verifyNoMoreInteractions(mockMainFeedRepository);
}
