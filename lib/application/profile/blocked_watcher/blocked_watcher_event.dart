part of 'blocked_watcher_bloc.dart';

@freezed
abstract class BlockedWatcherEvent with _$BlockedWatcherEvent {
  const factory BlockedWatcherEvent.watchBlockedUsersStarted(User user) = _WatchBlockedUsersStarted;
}
