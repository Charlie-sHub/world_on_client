part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorState with _$UserActorState {
  const factory UserActorState.initial() = _Initial;

  const factory UserActorState.actionInProgress() = _ActionInProgress;

  const factory UserActorState.deletionFailure(Failure<dynamic> failure) = _DeletionFailure;

  const factory UserActorState.deletionSuccess() = _DeletionSuccess;
}
