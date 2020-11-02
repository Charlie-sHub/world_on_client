part of 'follow_actor_bloc.dart';

@freezed
abstract class FollowActorState with _$FollowActorState {
  const factory FollowActorState.initial() = _Initial;

  const factory FollowActorState.actionInProgress() = _ActionInProgress;

  const factory FollowActorState.follows() = _Follows;

  const factory FollowActorState.followsNot() = _FollowsNot;

  const factory FollowActorState.followSuccess() = _FollowSuccess;

  const factory FollowActorState.followFailure(Failure<dynamic> failure) = _FollowFailure;

  const factory FollowActorState.unFollowSuccess() = _UnFollowSuccess;

  const factory FollowActorState.unFollowFailure(Failure<dynamic> failure) = _UnFollowFailure;
}
