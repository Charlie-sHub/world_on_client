part of 'user_profile_button_watcher_bloc.dart';

@freezed
class UserProfileButtonWatcherState with _$UserProfileButtonWatcherState {
  const factory UserProfileButtonWatcherState.initial() = _Initial;

  const factory UserProfileButtonWatcherState.actionInProgress() = _ActionInProgress;

  const factory UserProfileButtonWatcherState.loadSuccess(String imageUrl) = _LoadSuccess;

  const factory UserProfileButtonWatcherState.loadFailure() = _Failure;
}
