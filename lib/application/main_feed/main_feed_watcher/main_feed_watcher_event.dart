part of 'main_feed_watcher_bloc.dart';

@freezed
abstract class MainFeedWatcherEvent with _$MainFeedWatcherEvent {
  const factory MainFeedWatcherEvent.feedFilled() = _FeedFilled;
}
