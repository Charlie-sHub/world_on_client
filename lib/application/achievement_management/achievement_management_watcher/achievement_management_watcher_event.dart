part of 'achievement_management_watcher_bloc.dart';

@freezed
class AchievementManagementWatcherEvent
    with _$AchievementManagementWatcherEvent {
  const factory AchievementManagementWatcherEvent.watchAllAchievementsStarted() =
      _WatchAllAchievementsStarted;

  const factory AchievementManagementWatcherEvent.resultsReceived(
    Either<Failure, KtList<Achievement>> failureOrAchievements,
  ) = _ResultsReceived;
}
