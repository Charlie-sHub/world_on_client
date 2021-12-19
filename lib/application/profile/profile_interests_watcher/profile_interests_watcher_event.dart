part of 'profile_interests_watcher_bloc.dart';

@freezed
class ProfileInterestsWatcherEvent with _$ProfileInterestsWatcherEvent {
  const factory ProfileInterestsWatcherEvent.watchInterestsStarted(
    UniqueId id,
  ) = _WatchInterestsStarted;

  const factory ProfileInterestsWatcherEvent.resultsReceived(
    Either<Failure, KtList<Tag>> failureOrTags,
  ) = _ResultsReceived;
}
