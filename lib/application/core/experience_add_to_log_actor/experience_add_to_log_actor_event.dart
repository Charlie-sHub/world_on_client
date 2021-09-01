part of 'experience_add_to_log_actor_bloc.dart';

@freezed
class ExperienceAddToLogActorEvent with _$ExperienceAddToLogActorEvent {
  const factory ExperienceAddToLogActorEvent.initialized(
    UniqueId experienceId,
    Set<UniqueId> experiencesToDoIds,
    int toDoAmount,
  ) = _Initialized;

  const factory ExperienceAddToLogActorEvent.addedExperienceToLog(UniqueId experienceId) =
      _AddedExperienceToLog;

  const factory ExperienceAddToLogActorEvent.dismissedExperienceFromLog(UniqueId experienceId) =
      _DismissedExperienceFromLog;
}
