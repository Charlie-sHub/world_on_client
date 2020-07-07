part of 'profile_experiences_watcher_bloc.dart';

@freezed
abstract class ProfileExperiencesWatcherEvent with _$ProfileExperiencesWatcherEvent {
  // TODO: Change the names to the watcher events from Loaded to watch started
  const factory ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(User user) = _WatchExperiencesDoneStarted;

  const factory ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(User user) = _WatchExperiencesLikedStarted;

  const factory ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(User user) = _WatchExperiencesCreatedStarted;

  const factory ProfileExperiencesWatcherEvent.experiencesReceived(Either<Failure, Set<Experience>> failureOrExperiences) = _ExperiencesReceived;
}
