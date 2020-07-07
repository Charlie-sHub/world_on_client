part of 'followed_watcher_bloc.dart';

@freezed
abstract class FollowedWatcherEvent with _$FollowedWatcherEvent {
  const factory FollowedWatcherEvent.watchFollowedUsersStarted(User user) = _WatchFollowedUsersStarted;
}
