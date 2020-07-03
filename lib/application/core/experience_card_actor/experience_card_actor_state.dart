part of 'experience_card_actor_bloc.dart';

@freezed
abstract class ExperienceCardActorState with _$ExperienceCardActorState {
  const factory ExperienceCardActorState.initial() = _Initial;

  const factory ExperienceCardActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceCardActorState.additionSuccess() = _AdditionSuccess;

  const factory ExperienceCardActorState.additionFailure(Failure<dynamic> failure) = _AdditionFailure;
}
