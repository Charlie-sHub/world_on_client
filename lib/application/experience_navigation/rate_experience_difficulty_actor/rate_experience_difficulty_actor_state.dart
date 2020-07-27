part of 'rate_experience_difficulty_actor_bloc.dart';

@freezed
abstract class RateExperienceDifficultyActorState with _$RateExperienceDifficultyActorState {
  const factory RateExperienceDifficultyActorState.initial() = _Initial;

  const factory RateExperienceDifficultyActorState.actionInProgress() = _ActionInProgress;

  const factory RateExperienceDifficultyActorState.ratingSuccess() = _RatingSuccess;

  const factory RateExperienceDifficultyActorState.ratingFailure(Failure<dynamic> failure) = _RatingFailure;
}
