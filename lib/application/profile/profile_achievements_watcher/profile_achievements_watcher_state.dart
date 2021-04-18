part of 'profile_achievements_watcher_bloc.dart';

@freezed
class ProfileAchievementsWatcherState with _$ProfileAchievementsWatcherState {
  const factory ProfileAchievementsWatcherState.initial() = _Initial;

  const factory ProfileAchievementsWatcherState.loadInProgress() = _LoadInProgress;

  const factory ProfileAchievementsWatcherState.loadSuccess(KtList<Achievement> achievements) = _LoadSuccess;

  const factory ProfileAchievementsWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
