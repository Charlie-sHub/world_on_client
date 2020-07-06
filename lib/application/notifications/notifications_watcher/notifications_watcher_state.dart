part of 'notifications_watcher_bloc.dart';

@freezed
abstract class NotificationsWatcherState with _$NotificationsWatcherState {
  const factory NotificationsWatcherState.initial() = _Initial;

  const factory NotificationsWatcherState.loading() = _Loading;

  const factory NotificationsWatcherState.loadSuccess(List<Notification> notifications) = _LoadSuccess;

  const factory NotificationsWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
