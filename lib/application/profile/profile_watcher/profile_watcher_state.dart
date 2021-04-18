part of 'profile_watcher_bloc.dart';

@freezed
class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState.initial() = _Initial;

  const factory ProfileWatcherState.loadInProgress() = _LoadInProgress;

  const factory ProfileWatcherState.own(User user) = _Own;

  const factory ProfileWatcherState.foreign(User user) = _Foreign;

  const factory ProfileWatcherState.loadFailure() = _LoadFailure;
}
