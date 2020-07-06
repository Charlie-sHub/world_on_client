part of 'following_watcher_bloc.dart';

@freezed
abstract class FollowingWatcherEvent with _$FollowingWatcherEvent {
  const factory FollowingWatcherEvent.followingUsersLoaded(User user) = _FollowingUsersLoaded;
}
