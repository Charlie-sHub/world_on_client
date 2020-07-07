part of 'blocked_watcher_bloc.dart';

@freezed
abstract class BlockedWatcherState with _$BlockedWatcherState {
  const factory BlockedWatcherState.initial() = _Initial;

  const factory BlockedWatcherState.loadInProgress() = _LoadInProgress;

  const factory BlockedWatcherState.loadSuccess(Set<User> blockedUsers) = _LoadSuccess;

  const factory BlockedWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
