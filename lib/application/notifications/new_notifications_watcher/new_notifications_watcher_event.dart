part of 'new_notifications_watcher_bloc.dart';

@freezed
class NewNotificationsWatcherEvent with _$NewNotificationsWatcherEvent {
  const factory NewNotificationsWatcherEvent.watchNewNotificationsStarted() = _WatchNewNotificationsStarted;

  const factory NewNotificationsWatcherEvent.resultsReceived(Either<Failure, bool> failureOrBool) = _ResultsReceived;
}
