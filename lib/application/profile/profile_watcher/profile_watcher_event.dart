part of 'profile_watcher_bloc.dart';

@freezed
abstract class ProfileWatcherEvent with _$ProfileWatcherEvent {
  /// It's an option because if one enters the [ProfileBody] through the bottom navigation it'll send a none()
  /// as opposed to entering the profile page through some [User] list where it'll send some([User])
  const factory ProfileWatcherEvent.initializedForeignOrOwn(Option<User> userOption) = _InitializedForeignOrOwn;
}
