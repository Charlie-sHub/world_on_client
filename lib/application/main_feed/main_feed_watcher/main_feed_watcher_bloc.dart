import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/use_case/fill_feed.dart';

import '../../../injection.dart';

part 'main_feed_watcher_bloc.freezed.dart';
part 'main_feed_watcher_event.dart';
part 'main_feed_watcher_state.dart';

@injectable
class MainFeedWatcherBloc extends Bloc<MainFeedWatcherEvent, MainFeedWatcherState> {
  MainFeedWatcherBloc() : super(const MainFeedWatcherState.initial());

  @override
  Stream<MainFeedWatcherState> mapEventToState(MainFeedWatcherEvent event) async* {
    yield* event.map(
      feedFilled: onFeedFilled,
    );
  }

  Stream<MainFeedWatcherState> onFeedFilled(_FeedFilled event) async* {
    yield const MainFeedWatcherState.loading();
    final _fillFeed = getIt<FillFeed>();
    yield* _fillFeed(getIt<NoParams>()).map(
      (failureOrExperiences) => failureOrExperiences.fold(
        (failure) => MainFeedWatcherState.loadFailure(failure),
        (experiences) => MainFeedWatcherState.loadSuccess(experiences),
      ),
    );
  }
}
