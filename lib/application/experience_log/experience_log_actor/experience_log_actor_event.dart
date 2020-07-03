part of 'experience_log_actor_bloc.dart';

@freezed
abstract class ExperienceLogActorEvent with _$ExperienceLogActorEvent {
  const factory ExperienceLogActorEvent.dismissExperience(int experienceId) = _DismissExperience;
}
