part of 'notifications_watcher_bloc.dart';

@freezed
class NotificationsWatcherEvent with _$NotificationsWatcherEvent {
  const factory NotificationsWatcherEvent.watchNotificationsStarted() = _WatchNotificationsStarted;

  const factory NotificationsWatcherEvent.resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications) = _ResultsReceived;
}
