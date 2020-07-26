part of 'navigation_actor_bloc.dart';

@freezed
abstract class NavigationActorState with _$NavigationActorState {
  const factory NavigationActorState.mainFeedView() = _MainFeedView;

  const factory NavigationActorState.searchView() = _SearchView;

  const factory NavigationActorState.experienceFormView(Option<Experience> experienceOption) = _ExperienceFormView;

  const factory NavigationActorState.navigateExperienceView(Option<Experience> experienceOption) = _NavigateExperienceView;

  const factory NavigationActorState.profileView(Option<User> userOption) = _ProfileView;

  const factory NavigationActorState.errorView() = _ErrorView;

  const factory NavigationActorState.notificationsView() = _NotificationsView;
}
