part of 'experience_navigation_actor_bloc.dart';

@freezed
abstract class ExperienceNavigationActorEvent with _$ExperienceNavigationActorEvent {
  const factory ExperienceNavigationActorEvent.initialize(Option<Experience> experienceOption) = _Initialize;

  const factory ExperienceNavigationActorEvent.objectiveAccomplished(Objective objective) = _ObjectiveAccomplished;

  const factory ExperienceNavigationActorEvent.like() = _Like;

  // TODO: Implement likes and dislikes a la youtube
  // const factory ExperienceNavigationActorEvent.dislike() = _Dislike;

  // Isn't this some circular logic?
  // When will this event de added to the bloc?
  // I will have to investigate and think hard on how to update the user's location in the map
  const factory ExperienceNavigationActorEvent.getCurrentLocation() = _GetCurrentLocation;

  const factory ExperienceNavigationActorEvent.rateDifficulty(int difficulty) = _RateDifficulty;

  const factory ExperienceNavigationActorEvent.finishExperience() = _FinishExperience;

  const factory ExperienceNavigationActorEvent.rewardUser() = _RewardUser;
}
