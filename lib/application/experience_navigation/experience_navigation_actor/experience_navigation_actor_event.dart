part of 'experience_navigation_actor_bloc.dart';

@freezed
abstract class ExperienceNavigationActorEvent with _$ExperienceNavigationActorEvent {
  const factory ExperienceNavigationActorEvent.initialized(Option<Experience> experienceOption) = _Initialized;

  const factory ExperienceNavigationActorEvent.objectiveAccomplished(Objective objective) = _ObjectiveAccomplished;

  const factory ExperienceNavigationActorEvent.liked() = _Liked;

  // TODO: Implement likes and dislikes a la youtube
  // const factory ExperienceNavigationActorEvent.dislike() = _Dislike;

  // Isn't this some circular logic?
  // When will this event de added to the bloc?
  // I will have to investigate and think hard on how to update the user's location in the map
  const factory ExperienceNavigationActorEvent.gotCurrentLocation() = _GotCurrentLocation;
  
  const factory ExperienceNavigationActorEvent.difficultyRated(int difficulty) = _DifficultyRated;
  
  const factory ExperienceNavigationActorEvent.experienceFinished() = _ExperienceFinished;
  
  const factory ExperienceNavigationActorEvent.userRewarded() = _UserRewarded;
}
