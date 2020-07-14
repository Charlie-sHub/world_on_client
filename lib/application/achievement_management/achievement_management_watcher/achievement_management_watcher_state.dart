part of 'achievement_management_watcher_bloc.dart';

@freezed
abstract class AchievementManagementWatcherState with _$AchievementManagementWatcherState {
  const factory AchievementManagementWatcherState.initial() = _Initial;

  const factory AchievementManagementWatcherState.loadInProgress() = _LoadInProgress;

  const factory AchievementManagementWatcherState.loadSuccess(KtSet<Achievement> achievements) = _loadSuccess;

  const factory AchievementManagementWatcherState.loadFailure(Failure<dynamic> failure) = _loadFailure;
}
