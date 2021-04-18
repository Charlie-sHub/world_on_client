part of 'rate_experience_difficulty_actor_bloc.dart';

@freezed
class RateExperienceDifficultyActorState with _$RateExperienceDifficultyActorState {
  const factory RateExperienceDifficultyActorState({
    required int difficulty,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _RateExperienceDifficultyActorState;

  factory RateExperienceDifficultyActorState.initial() => RateExperienceDifficultyActorState(
        difficulty: 1,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
