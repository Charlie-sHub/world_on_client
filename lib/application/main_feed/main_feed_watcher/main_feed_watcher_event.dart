part of 'main_feed_watcher_bloc.dart';

@freezed
abstract class MainFeedWatcherEvent with _$MainFeedWatcherEvent {
  const factory MainFeedWatcherEvent.watchMainFeedStarted() = _WatchMainFeedStarted;

  const factory MainFeedWatcherEvent.resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _ResultsReceived;
}
