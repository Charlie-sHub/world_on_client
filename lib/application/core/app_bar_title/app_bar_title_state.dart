part of 'app_bar_title_bloc.dart';

@freezed
class AppBarTitleState with _$AppBarTitleState {
  const factory AppBarTitleState.initial() = _Initial;

  const factory AppBarTitleState.mainFeed() = _MainFeed;

  const factory AppBarTitleState.search() = _Search;

  const factory AppBarTitleState.recommendations() = _Recommendations;

  const factory AppBarTitleState.experienceNavigation() = _ExperienceNavigation;

  const factory AppBarTitleState.experienceFinish() = _ExperienceFinish;

  const factory AppBarTitleState.profile() = _Profile;

  const factory AppBarTitleState.notifications() = _Notifications;

  const factory AppBarTitleState.followers() = _Followers;

  const factory AppBarTitleState.following() = _Following;

  const factory AppBarTitleState.username(String username) = _Username;

  const factory AppBarTitleState.error() = _Error;
}
