part of 'experience_like_actor_bloc.dart';

@freezed
abstract class ExperienceLikeActorEvent with _$ExperienceLikeActorEvent {
  const factory ExperienceLikeActorEvent.initialized(Experience experience) = _Initialized;

  const factory ExperienceLikeActorEvent.liked(Experience experience) = _Liked;
// TODO: Implement disliked
}
