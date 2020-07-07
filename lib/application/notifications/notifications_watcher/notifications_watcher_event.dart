part of 'notifications_watcher_bloc.dart';

@freezed
abstract class NotificationsWatcherEvent with _$NotificationsWatcherEvent {
  const factory NotificationsWatcherEvent.watchNotificationsStarted() = _WatchNotificationsStarted;
}
