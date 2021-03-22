part of 'new_notifications_watcher_bloc.dart';

@freezed
abstract class NewNotificationsWatcherEvent with _$NewNotificationsWatcherEvent {
  const factory NewNotificationsWatcherEvent.watchNewNotificationsStarted() = _WatchNewNotificationsStarted;

  const factory NewNotificationsWatcherEvent.resultsReceived(Either<Failure, bool> failureOrBool) = _ResultsReceived;
}
