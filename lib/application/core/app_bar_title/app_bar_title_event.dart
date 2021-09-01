part of 'app_bar_title_bloc.dart';

@freezed
class AppBarTitleEvent with _$AppBarTitleEvent {
  const factory AppBarTitleEvent.initialized() = _Initialized;

  const factory AppBarTitleEvent.showedMainFeed() = _ShowedMainFeed;

  const factory AppBarTitleEvent.showedSearch() = _ShowedSearch;

  const factory AppBarTitleEvent.showedRecommendations() = _ShowedRecommendations;

  const factory AppBarTitleEvent.showedExperienceNavigation() = _ShowedExperienceNavigation;

  const factory AppBarTitleEvent.showedExperienceFinish() = _ShowedExperienceFinish;

  const factory AppBarTitleEvent.showedProfile() = _ShowedProfile;

  const factory AppBarTitleEvent.showedNotifications() = _ShowedNotifications;

  const factory AppBarTitleEvent.showedFollowers() = _ShowedFollowers;

  const factory AppBarTitleEvent.showedFollowing() = _ShowedFollowing;

  const factory AppBarTitleEvent.showedUsername(String username) = _ShowedUsername;
}
