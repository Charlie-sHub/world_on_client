part of 'experience_finish_actor_bloc.dart';

@freezed
abstract class ExperienceFinishActorState with _$ExperienceFinishActorState {
  const factory ExperienceFinishActorState.initial() = _Initial;

  const factory ExperienceFinishActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceFinishActorState.finishSuccess(int amountXP, {bool leveledUp}) = _FinishSuccess;

  const factory ExperienceFinishActorState.finishFailure(Failure<dynamic> failure) = _FinishFailure;
}
