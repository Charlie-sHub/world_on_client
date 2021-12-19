part of 'profile_experiences_watcher_bloc.dart';

@freezed
class ProfileExperiencesWatcherEvent with _$ProfileExperiencesWatcherEvent {
  const factory ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(
    UniqueId id,
  ) = _WatchExperiencesDoneStarted;

  const factory ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(
    UniqueId id,
  ) = _WatchExperiencesLikedStarted;

  const factory ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(
    UniqueId id,
  ) = _WatchExperiencesCreatedStarted;

  const factory ProfileExperiencesWatcherEvent.experiencesReceived(
    Either<Failure, KtList<Experience>> failureOrExperiences,
  ) = _ExperiencesReceived;
}
