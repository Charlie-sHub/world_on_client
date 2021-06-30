part of 'experience_add_to_log_actor_bloc.dart';

@freezed
class ExperienceAddToLogActorState with _$ExperienceAddToLogActorState {
  const factory ExperienceAddToLogActorState.initial() = _Initial;

  const factory ExperienceAddToLogActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceAddToLogActorState.inLog() = _InLog;

  const factory ExperienceAddToLogActorState.notInLog() = _NotInLog;

  const factory ExperienceAddToLogActorState.additionSuccess() = _AdditionSuccess;

  const factory ExperienceAddToLogActorState.additionFailure(Failure<dynamic> failure) =
      _AdditionFailure;

  const factory ExperienceAddToLogActorState.dismissalSuccess() = _DismissalSuccess;

  const factory ExperienceAddToLogActorState.dismissalFailure(Failure<dynamic> failure) =
      _DismissalFailure;
}
