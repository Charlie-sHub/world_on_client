part of 'following_watcher_bloc.dart';

@freezed
abstract class FollowingWatcherEvent with _$FollowingWatcherEvent {
  const factory FollowingWatcherEvent.watchFollowingUsersStarted(User user) = _WatchFollowingUsersStarted;
}
