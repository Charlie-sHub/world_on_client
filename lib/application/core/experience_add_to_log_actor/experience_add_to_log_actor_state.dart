part of 'experience_add_to_log_actor_bloc.dart';

@freezed
class ExperienceAddToLogActorState with _$ExperienceAddToLogActorState {
  const factory ExperienceAddToLogActorState({
    required bool inLog,
    required int toDoAmount,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceAddToLogActorState;

  factory ExperienceAddToLogActorState.initial() => ExperienceAddToLogActorState(
        inLog: false,
        toDoAmount: 0,
        failureOrSuccessOption: none(),
      );
}
