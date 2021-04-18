part of 'experience_like_actor_bloc.dart';

@freezed
class ExperienceLikeActorEvent with _$ExperienceLikeActorEvent {
  const factory ExperienceLikeActorEvent.initialized(Experience experience) = _Initialized;

  const factory ExperienceLikeActorEvent.liked(Experience experience) = _Liked;

  const factory ExperienceLikeActorEvent.disliked(Experience experience) = _Disliked;
}
