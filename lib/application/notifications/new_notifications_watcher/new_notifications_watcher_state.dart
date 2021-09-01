part of 'new_notifications_watcher_bloc.dart';

@freezed
class NewNotificationsWatcherState with _$NewNotificationsWatcherState {
  const factory NewNotificationsWatcherState.initial() = _Initial;

  const factory NewNotificationsWatcherState.newNotifications() = _NewNotifications;

  const factory NewNotificationsWatcherState.noNewNotifications() = _NoNewNotifications;

  const factory NewNotificationsWatcherState.failure() = _Failure;
}
