part of 'user_profile_button_watcher_bloc.dart';

@freezed
abstract class UserProfileButtonWatcherEvent with _$UserProfileButtonWatcherEvent {
  const factory UserProfileButtonWatcherEvent.initialized() = _Initialized;
}
