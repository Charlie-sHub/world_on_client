part of 'experience_card_actor_bloc.dart';

@freezed
class ExperienceCardActorState with _$ExperienceCardActorState {
  const factory ExperienceCardActorState.initial() = _Initial;

  const factory ExperienceCardActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceCardActorState.inLog() = _InLog;

  const factory ExperienceCardActorState.notInLog() = _NotInLog;

  const factory ExperienceCardActorState.additionSuccess() = _AdditionSuccess;

  const factory ExperienceCardActorState.additionFailure(Failure<dynamic> failure) = _AdditionFailure;

  const factory ExperienceCardActorState.dismissalSuccess() = _DismissalSuccess;

  const factory ExperienceCardActorState.dismissalFailure(Failure<dynamic> failure) = _DismissalFailure;
}
