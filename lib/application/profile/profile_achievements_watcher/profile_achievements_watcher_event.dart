part of 'profile_achievements_watcher_bloc.dart';

@freezed
abstract class ProfileAchievementsWatcherEvent with _$ProfileAchievementsWatcherEvent {
  const factory ProfileAchievementsWatcherEvent.watchAchievementsStarted(User user) = _WatchAchievementsStarted;

  const factory ProfileAchievementsWatcherEvent.resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements) = _ResultsReceived;
}
