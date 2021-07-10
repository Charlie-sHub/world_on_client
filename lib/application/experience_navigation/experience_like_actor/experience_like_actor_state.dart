part of 'experience_like_actor_bloc.dart';

@freezed
class ExperienceLikeActorState with _$ExperienceLikeActorState {
  const factory ExperienceLikeActorState({
    required bool likes,
    required int likesAmount,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ExperienceLikeActorState;

  factory ExperienceLikeActorState.initial() => ExperienceLikeActorState(
        likes: false,
        likesAmount: 0,
        failureOrSuccessOption: none(),
      );
}
