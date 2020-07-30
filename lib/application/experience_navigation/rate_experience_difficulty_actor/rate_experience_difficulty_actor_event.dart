part of 'rate_experience_difficulty_actor_bloc.dart';

@freezed
abstract class RateExperienceDifficultyActorEvent with _$RateExperienceDifficultyActorEvent {
  const factory RateExperienceDifficultyActorEvent.difficultyChanged(int difficultyRating) = _DifficultyChanged;

  const factory RateExperienceDifficultyActorEvent.difficultyRated(Experience experience) = _DifficultyRated;
}
