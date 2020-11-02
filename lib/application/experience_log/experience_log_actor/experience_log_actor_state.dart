part of 'experience_log_actor_bloc.dart';

@freezed
abstract class ExperienceLogActorState with _$ExperienceLogActorState {
  const factory ExperienceLogActorState.initial() = _Initial;

  const factory ExperienceLogActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceLogActorState.dismissalSuccess() = _DismissalSuccess;

  const factory ExperienceLogActorState.dismissalFailure(Failure<dynamic> failure) = _DismissalFailure;
}
