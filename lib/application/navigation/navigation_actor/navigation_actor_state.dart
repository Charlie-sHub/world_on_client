part of 'navigation_actor_bloc.dart';

@freezed
class NavigationActorState with _$NavigationActorState {
  const factory NavigationActorState.mainFeedView() = _MainFeedView;

  const factory NavigationActorState.searchView() = _SearchView;

  const factory NavigationActorState.navigateExperienceView(Option<Experience> experienceOption) = _NavigateExperienceView;

  const factory NavigationActorState.profileView({
    required Option<UniqueId> userIdOption,
    required bool currentUserProfile,
  }) = _ProfileView;

  const factory NavigationActorState.errorView() = _ErrorView;

  const factory NavigationActorState.notificationsView() = _NotificationsView;
}
