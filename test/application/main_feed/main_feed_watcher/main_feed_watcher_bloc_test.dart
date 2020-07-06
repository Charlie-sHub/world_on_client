import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/application/main_feed/main_feed_watcher/main_feed_watcher_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/main_feed/use_case/fill_feed.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/create_stream.dart';
import '../../../domain/core/methods/get_valid_experience.dart';
import '../../../test_descriptions.dart';

void main() {
  FillFeed fillFeed;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      fillFeed = getIt<FillFeed>();
    },
  );
  final experienceFeed = [getValidExperience(), getValidExperience()];
  const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () async => getIt<MainFeedWatcherBloc>(),
    skip: 0,
    expect: [const MainFeedWatcherState.initial()],
  );
  blocTest(
    TestDescription.shouldEmitSuccess,
    build: () async {
      when(fillFeed.call(any)).thenAnswer((realInvocation) => createStream(right(experienceFeed)));
      return getIt<MainFeedWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const MainFeedWatcherEvent.feedFilled()),
    verify: (_) async {
      verify(fillFeed.call(any));
      verifyNoMoreInteractions(fillFeed);
    },
    expect: [
      const MainFeedWatcherState.loading(),
      MainFeedWatcherState.loadSuccess(experienceFeed),
    ],
  );
  blocTest(
    TestDescription.shouldEmitFailure,
    build: () async {
      when(fillFeed.call(any)).thenAnswer((realInvocation) => createStream(left(failure)));
      return getIt<MainFeedWatcherBloc>();
    },
    act: (bloc) async => bloc.add(const MainFeedWatcherEvent.feedFilled()),
    verify: (_) async {
      verify(fillFeed.call(any));
      verifyNoMoreInteractions(fillFeed);
    },
    expect: [
      const MainFeedWatcherState.loading(),
      const MainFeedWatcherState.loadFailure(failure),
    ],
  );
}
