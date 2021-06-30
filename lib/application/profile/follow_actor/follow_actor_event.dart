part of 'follow_actor_bloc.dart';

@freezed
class FollowActorEvent with _$FollowActorEvent {
  const factory FollowActorEvent.initialized(
    UniqueId userId,
    Set<UniqueId> followedUsersIds,
  ) = _Initialized;

  const factory FollowActorEvent.followed(UniqueId userId) = _Followed;

  const factory FollowActorEvent.unFollowed(UniqueId userId) = _UnFollowed;
}
