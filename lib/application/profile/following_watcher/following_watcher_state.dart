part of 'following_watcher_bloc.dart';

@freezed
abstract class FollowingWatcherState with _$FollowingWatcherState {
  const factory FollowingWatcherState.initial() = _Initial;

  const factory FollowingWatcherState.loadInProgress() = _LoadInProgress;

  const factory FollowingWatcherState.loadSuccess(Set<User> followingUsers) = _LoadSuccess;

  const factory FollowingWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
