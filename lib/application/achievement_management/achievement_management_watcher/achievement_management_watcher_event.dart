part of 'achievement_management_watcher_bloc.dart';

@freezed
abstract class AchievementManagementWatcherEvent with _$AchievementManagementWatcherEvent {
  const factory AchievementManagementWatcherEvent.watchAllAchievementsStarted() = _WatchAllAchievementsStarted;
}
