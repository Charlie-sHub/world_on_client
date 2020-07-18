part of 'navigation_actor_bloc.dart';

@freezed
abstract class NavigationActorEvent with _$NavigationActorEvent {
  const factory NavigationActorEvent.mainFeedTapped() = _MainFeedTapped;

  const factory NavigationActorEvent.searchTapped() = _SearchTapped;

  const factory NavigationActorEvent.experienceFormTapped(Option<Experience> experienceOption) = _ExperienceFormTapped;

  const factory NavigationActorEvent.experienceNavigationTapped(Option<Experience> experienceOption) = _ExperienceNavigationTapped;

  const factory NavigationActorEvent.profileTapped(Option<User> userOption) = _ProfileTapped;

  const factory NavigationActorEvent.notificationsTapped() = _NotificationsTapped;
}
