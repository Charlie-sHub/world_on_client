part of 'profile_watcher_bloc.dart';

@freezed
class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState.initial() = _Initial;

  const factory ProfileWatcherState.newProfileUpdate(User user) = _NewProfileUpdate;

  const factory ProfileWatcherState.failure() = _Failure;
}
