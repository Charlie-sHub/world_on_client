part of 'block_actor_bloc.dart';

@freezed
abstract class BlockActorState with _$BlockActorState {
  const factory BlockActorState.initial() = _Initial;

  const factory BlockActorState.actionInProgress() = _ActionInProgress;

  const factory BlockActorState.blocks() = _Blocks;

  const factory BlockActorState.blocksNot() = _BlocksNot;

  const factory BlockActorState.blockSuccess() = _BlockSuccess;

  const factory BlockActorState.blockFailure(Failure<dynamic> failure) = _BlockFailure;

  const factory BlockActorState.unBlockSuccess() = _UnBlockSuccess;

  const factory BlockActorState.unBlockFailure(Failure<dynamic> failure) = _UnBlockFailure;
}
