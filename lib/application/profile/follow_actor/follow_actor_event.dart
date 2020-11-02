part of 'follow_actor_bloc.dart';

@freezed
abstract class FollowActorEvent with _$FollowActorEvent {
  const factory FollowActorEvent.initialized(User user) = _Initialized;

  const factory FollowActorEvent.followed(User user) = _Followed;

  const factory FollowActorEvent.unFollowed(User user) = _UnFollowed;
}
