part of 'profile_interests_watcher_bloc.dart';

@freezed
abstract class ProfileInterestsWatcherEvent with _$ProfileInterestsWatcherEvent {
  const factory ProfileInterestsWatcherEvent.watchInterestsStarted(User user) = _WatchInterestsStarted;
}
