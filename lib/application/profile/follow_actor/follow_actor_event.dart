part of 'follow_actor_bloc.dart';

@freezed
abstract class FollowActorEvent with _$FollowActorEvent {
  const factory FollowActorEvent.initialized(User user) = _Initialized;

  // TODO: How to pass the user to the event?
  // I'll assume
  const factory FollowActorEvent.followed(User user) = _Followed;

  const factory FollowActorEvent.unFollowed(User user) = _UnFollowed;
}
