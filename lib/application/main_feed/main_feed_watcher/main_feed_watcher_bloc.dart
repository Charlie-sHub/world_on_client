import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/use_case/watch_feed.dart';

import '../../../injection.dart';

part 'main_feed_watcher_bloc.freezed.dart';
part 'main_feed_watcher_event.dart';
part 'main_feed_watcher_state.dart';

@injectable
class MainFeedWatcherBloc extends Bloc<MainFeedWatcherEvent, MainFeedWatcherState> {
  MainFeedWatcherBloc() : super(const MainFeedWatcherState.initial());

  StreamSubscription<Either<Failure, KtList<Experience>>>? _mainFeedStreamSubscription;

  @override
  Stream<MainFeedWatcherState> mapEventToState(MainFeedWatcherEvent event) async* {
    yield* event.map(
      watchMainFeedStarted: _onWatchMainFeedStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<MainFeedWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrExperiences.fold(
      (failure) => MainFeedWatcherState.loadFailure(failure),
      (experiences) => MainFeedWatcherState.loadSuccess(experiences),
    );
  }

  Stream<MainFeedWatcherState> _onWatchMainFeedStarted(_) async* {
    yield const MainFeedWatcherState.loadInProgress();
    await _mainFeedStreamSubscription?.cancel();
    _mainFeedStreamSubscription = getIt<WatchFeed>()(
      getIt<NoParams>(),
    ).listen(
      (_failureOrExperiences) => add(
        MainFeedWatcherEvent.resultsReceived(_failureOrExperiences),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _mainFeedStreamSubscription?.cancel();
    return super.close();
  }
}
