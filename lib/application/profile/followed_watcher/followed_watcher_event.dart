part of 'followed_watcher_bloc.dart';

@freezed
abstract class FollowedWatcherEvent with _$FollowedWatcherEvent {
  const factory FollowedWatcherEvent.followedUsersLoaded(User user) = _FollowedUsersLoaded;
}
