part of 'rate_experience_difficulty_actor_bloc.dart';

@freezed
abstract class RateExperienceDifficultyActorState with _$RateExperienceDifficultyActorState {
  const factory RateExperienceDifficultyActorState({
    @required int difficulty,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _RateExperienceDifficultyActorState;

  factory RateExperienceDifficultyActorState.initial() => RateExperienceDifficultyActorState(
        difficulty: 0,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
