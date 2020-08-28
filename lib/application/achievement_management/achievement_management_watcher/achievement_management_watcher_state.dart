part of 'achievement_management_watcher_bloc.dart';

@freezed
abstract class AchievementManagementWatcherState with _$AchievementManagementWatcherState {
  const factory AchievementManagementWatcherState.initial() = _Initial;

  const factory AchievementManagementWatcherState.loadInProgress() = _LoadInProgress;

  const factory AchievementManagementWatcherState.loadSuccess(KtList<Achievement> achievements) = _LoadSuccess;

  const factory AchievementManagementWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
