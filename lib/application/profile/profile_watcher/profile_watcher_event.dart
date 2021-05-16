part of 'profile_watcher_bloc.dart';

@freezed
class ProfileWatcherEvent with _$ProfileWatcherEvent {
  const factory ProfileWatcherEvent.watchProfileStarted(UniqueId userId) = _WatchProfileStarted;

  const factory ProfileWatcherEvent.resultsReceived(Either<Failure, User> failureOrUser) = _ResultsReceived;
}
