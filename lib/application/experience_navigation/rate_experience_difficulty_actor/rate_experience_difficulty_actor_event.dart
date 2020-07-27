part of 'rate_experience_difficulty_actor_bloc.dart';

@freezed
abstract class RateExperienceDifficultyActorEvent with _$RateExperienceDifficultyActorEvent {
  const factory RateExperienceDifficultyActorEvent.difficultyRated({
    @required Experience experience,
    @required int difficultyRating,
  }) = _DifficultyRated;
}
