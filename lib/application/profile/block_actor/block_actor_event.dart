part of 'block_actor_bloc.dart';

@freezed
class BlockActorEvent with _$BlockActorEvent {
  const factory BlockActorEvent.initialized(
    UniqueId userToCheckId,
    Set<UniqueId> blockedUsersIds,
  ) = _Initialized;

  const factory BlockActorEvent.blocked(
    UniqueId userToBlockId,
    SimpleUser currentUser,
  ) = _Blocked;

  const factory BlockActorEvent.unBlocked(
    UniqueId userToUnBlockId,
    SimpleUser currentUser,
  ) = _UnBlocked;
}
