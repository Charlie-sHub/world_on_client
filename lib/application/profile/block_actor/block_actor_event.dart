part of 'block_actor_bloc.dart';

@freezed
class BlockActorEvent with _$BlockActorEvent {
  const factory BlockActorEvent.initialized(
    User user,
    Set<UniqueId> blockedUsersIds,
  ) = _Initialized;

  const factory BlockActorEvent.blocked(User user) = _Blocked;

  const factory BlockActorEvent.unBlocked(User user) = _UnBlocked;
}
