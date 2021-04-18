part of 'experience_log_actor_bloc.dart';

@freezed
class ExperienceLogActorEvent with _$ExperienceLogActorEvent {
  const factory ExperienceLogActorEvent.experienceDismissed(UniqueId experienceId) = _ExperienceDismissed;
}
