part of 'tag_card_actor_bloc.dart';

@freezed
class TagCardActorState with _$TagCardActorState {
  const factory TagCardActorState.initial() = _Initial;

  const factory TagCardActorState.inInterests() = _InInterests;

  const factory TagCardActorState.notInInterests() = _NotInInterests;

  const factory TagCardActorState.actionInProgress() = _ActionInProgress;

  const factory TagCardActorState.additionSuccess() = _AdditionSuccess;

  const factory TagCardActorState.additionFailure(Failure<dynamic> failure) = _AdditionFailure;

  const factory TagCardActorState.dismissalSuccess() = _DismissalSuccess;

  const factory TagCardActorState.dismissalFailure(Failure<dynamic> failure) = _DismissalFailure;
}
