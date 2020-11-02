part of 'experience_like_actor_bloc.dart';

@freezed
abstract class ExperienceLikeActorState with _$ExperienceLikeActorState {
  const factory ExperienceLikeActorState.initial() = _Initial;

  const factory ExperienceLikeActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceLikeActorState.likes() = _Likes;

  const factory ExperienceLikeActorState.neutral() = _Neutral;

  const factory ExperienceLikeActorState.likeSuccess() = _LikeSuccess;

  const factory ExperienceLikeActorState.likeFailure(Failure<dynamic> failure) = _LikeFailure;

  const factory ExperienceLikeActorState.dislikeSuccess() = _DislikeSuccess;

  const factory ExperienceLikeActorState.dislikeFailure(Failure<dynamic> failure) = _DislikeFailure;
}
