part of 'experience_add_to_log_actor_bloc.dart';

@freezed
class ExperienceAddToLogActorEvent with _$ExperienceAddToLogActorEvent {
  const factory ExperienceAddToLogActorEvent.initialized(
    Experience experience,
    Set<UniqueId> experiencesToDoIds,
  ) = _Initialized;

  const factory ExperienceAddToLogActorEvent.addedExperienceToLog(Experience experience) =
      _AddedExperienceToLog;

  const factory ExperienceAddToLogActorEvent.dismissedExperienceFromLog(Experience experience) =
      _DismissedExperienceFromLog;
}
