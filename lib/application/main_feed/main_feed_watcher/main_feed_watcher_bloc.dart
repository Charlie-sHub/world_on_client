import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/use_case/watch_feed.dart';
import 'package:worldon/injection.dart';

part 'main_feed_watcher_bloc.freezed.dart';
part 'main_feed_watcher_event.dart';
part 'main_feed_watcher_state.dart';

@injectable
class MainFeedWatcherBloc
    extends Bloc<MainFeedWatcherEvent, MainFeedWatcherState> {
  MainFeedWatcherBloc() : super(const MainFeedWatcherState.initial()) {
    on<_WatchMainFeedStarted>(_onWatchMainFeedStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _mainFeedStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrExperiences.fold(
        (failure) => MainFeedWatcherState.loadFailure(
          failure,
        ),
        (experiences) => MainFeedWatcherState.loadSuccess(
          experiences,
        ),
      ),
    );
  }

  FutureOr<void> _onWatchMainFeedStarted(_, Emitter emit) async {
    emit(const MainFeedWatcherState.loadInProgress());
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
