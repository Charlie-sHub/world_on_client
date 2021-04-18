part of 'notifications_watcher_bloc.dart';

@freezed
class NotificationsWatcherState with _$NotificationsWatcherState {
  const factory NotificationsWatcherState.initial() = _Initial;

  const factory NotificationsWatcherState.loadInProgress() = _LoadInProgress;

  const factory NotificationsWatcherState.loadSuccess(KtList<Notification> notifications) = _LoadSuccess;

  const factory NotificationsWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
