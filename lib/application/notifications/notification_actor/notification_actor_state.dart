part of 'notification_actor_bloc.dart';

@freezed
abstract class NotificationActorState with _$NotificationActorState {
  const factory NotificationActorState.initial() = _Initial;

  const factory NotificationActorState.actionInProgress() = _ActionInProgress;

  const factory NotificationActorState.deletionSuccess() = _DeletionSuccess;

  const factory NotificationActorState.deletionFailure(Failure<dynamic> failure) = _DeletionFailure;

  const factory NotificationActorState.checkSuccess() = _CheckSuccess;
// There's no need for a checkFailure, if the check doesn't succeed then the notification simply stays as not seen
}
