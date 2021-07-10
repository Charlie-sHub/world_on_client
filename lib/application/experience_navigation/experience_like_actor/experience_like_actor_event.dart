part of 'experience_like_actor_bloc.dart';

@freezed
class ExperienceLikeActorEvent with _$ExperienceLikeActorEvent {
  const factory ExperienceLikeActorEvent.initialized(
    UniqueId experienceId,
    Set<UniqueId> experiencesLikedIds,
    int likesAmount,
  ) = _Initialized;

  const factory ExperienceLikeActorEvent.liked(UniqueId experienceId) = _Liked;

  const factory ExperienceLikeActorEvent.disliked(UniqueId experienceId) = _Disliked;
}
