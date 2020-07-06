part of 'notification_actor_bloc.dart';

@freezed
abstract class NotificationActorEvent with _$NotificationActorEvent {
  const factory NotificationActorEvent.deleted(Notification notification) = _Deleted;

  // Check as in set to seen
  const factory NotificationActorEvent.checked(Notification notification) = _Checked;
}
