part of 'achievement_management_watcher_bloc.dart';

@freezed
abstract class AchievementManagementWatcherState with _$AchievementManagementWatcherState {
  const factory AchievementManagementWatcherState.initial() = _Initial;

  const factory AchievementManagementWatcherState.loading() = _Loading;

  const factory AchievementManagementWatcherState.loadSuccess(List<Achievement> achievements) = _loadSuccess;

  const factory AchievementManagementWatcherState.loadFailure(Failure<dynamic> failure) = _loadFailure;
}
