part of 'notification_actor_bloc.dart';

@freezed
abstract class NotificationActorEvent with _$NotificationActorEvent {
  const factory NotificationActorEvent.delete(Notification notification) = _Delete;

  // Check as in set to seen
  const factory NotificationActorEvent.check(Notification notification) = _Check;
}
