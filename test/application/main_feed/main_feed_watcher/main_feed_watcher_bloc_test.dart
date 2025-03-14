import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/main_feed/use_case/watch_feed.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../test_descriptions.dart';

void main() {
  WatchFeed fillFeed;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      fillFeed = getIt<WatchFeed>();
    },
  );
  final experienceFeed = KtList.of(getValidExperience());
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<MainFeedWatcherBloc>(),
    expect: [],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () {
      when(fillFeed.call(any)).thenAnswer((realInvocation) => createStream(right(experienceFeed)));
      return getIt<MainFeedWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(const MainFeedWatcherEvent.watchMainFeedStarted());
      bloc.add(MainFeedWatcherEvent.resultsReceived(right(experienceFeed)));
    },
    verify: (_) async {
      verify(fillFeed.call(any));
      verifyNoMoreInteractions(fillFeed);
    },
    expect: [
      const MainFeedWatcherState.loadInProgress(),
      MainFeedWatcherState.loadSuccess(experienceFeed),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () {
      when(fillFeed.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<MainFeedWatcherBloc>();
    },
    act: (bloc) async {
      bloc.add(const MainFeedWatcherEvent.watchMainFeedStarted());
      bloc.add(MainFeedWatcherEvent.resultsReceived(left(failure)));
    },
    verify: (_) async {
      verify(fillFeed.call(any));
      verifyNoMoreInteractions(fillFeed);
    },
    expect: [
      const MainFeedWatcherState.loadInProgress(),
      const MainFeedWatcherState.loadFailure(failure),
    ],
  );
}
