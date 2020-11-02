part of 'experience_finish_actor_bloc.dart';

@freezed
abstract class ExperienceFinishActorEvent with _$ExperienceFinishActorEvent {
  const factory ExperienceFinishActorEvent.finishedExperience(Experience experience) = _FinishedExperience;
}
