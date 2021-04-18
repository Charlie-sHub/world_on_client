part of 'navigation_actor_bloc.dart';

@freezed
class NavigationActorEvent with _$NavigationActorEvent {
  const factory NavigationActorEvent.mainFeedTapped() = _MainFeedTapped;

  const factory NavigationActorEvent.searchTapped() = _SearchTapped;

  const factory NavigationActorEvent.experienceFormTapped(Option<Experience> experienceOption) = _ExperienceFormTapped;

  const factory NavigationActorEvent.experienceNavigationTapped(Option<Experience> experienceOption) = _ExperienceNavigationTapped;

  const factory NavigationActorEvent.profileTapped({
    required Option<User> userOption,
    required bool currentUserProfile,
  }) = _ProfileTapped;

  const factory NavigationActorEvent.notificationsTapped() = _NotificationsTapped;
}
