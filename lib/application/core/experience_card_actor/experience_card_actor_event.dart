part of 'experience_card_actor_bloc.dart';

@freezed
abstract class ExperienceCardActorEvent with _$ExperienceCardActorEvent {
  const factory ExperienceCardActorEvent.addExperienceToLog(int experienceId) = _AddExperienceToLog;
}
