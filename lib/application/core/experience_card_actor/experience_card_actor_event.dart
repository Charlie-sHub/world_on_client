part of 'experience_card_actor_bloc.dart';

@freezed
abstract class ExperienceCardActorEvent with _$ExperienceCardActorEvent {
  const factory ExperienceCardActorEvent.initialized(Experience experience) = _Initialized;

  const factory ExperienceCardActorEvent.addedExperienceToLog(Experience experience) = _AddedExperienceToLog;

  const factory ExperienceCardActorEvent.dismissedExperienceFromLog(Experience experience) = _DismissedExperienceFromLog;
}
