part of 'main_feed_watcher_bloc.dart';

@freezed
class MainFeedWatcherState with _$MainFeedWatcherState {
  const factory MainFeedWatcherState.initial() = _Initial;

  const factory MainFeedWatcherState.loadInProgress() = _LoadInProgress;

  const factory MainFeedWatcherState.loadSuccess(KtList<Experience> experiences) = _LoadSuccess;

  const factory MainFeedWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
