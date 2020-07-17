part of 'bottom_navigation_actor_bloc.dart';

@freezed
abstract class BottomNavigationActorState with _$BottomNavigationActorState {
  const factory BottomNavigationActorState.mainFeedView() = _MainFeedView;

  const factory BottomNavigationActorState.searchView() = _SearchView;

  const factory BottomNavigationActorState.createExperienceView() = _CreateExperienceView;

  const factory BottomNavigationActorState.navigateExperienceView() = _NavigateExperienceView;

  const factory BottomNavigationActorState.profileView() = _ProfileView;

  const factory BottomNavigationActorState.errorView() = _ErrorView;
}
