part of 'block_actor_bloc.dart';

@freezed
abstract class BlockActorEvent with _$BlockActorEvent {
  const factory BlockActorEvent.initialized(User user) = _Initialized;

  const factory BlockActorEvent.blocked(User user) = _Blocked;

  const factory BlockActorEvent.unBlocked(User user) = _UnBlocked;
}
