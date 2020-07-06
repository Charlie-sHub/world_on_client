part of 'followed_watcher_bloc.dart';

@freezed
abstract class FollowedWatcherState with _$FollowedWatcherState {
  const factory FollowedWatcherState.initial() = _Initial;

  const factory FollowedWatcherState.loading() = _Loading;

  const factory FollowedWatcherState.loadSuccess(Set<User> followedUsers) = _LoadSuccess;

  const factory FollowedWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
