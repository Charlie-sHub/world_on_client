part of 'experience_navigation_watcher_bloc.dart';

@freezed
class ExperienceNavigationWatcherState with _$ExperienceNavigationWatcherState {
  const factory ExperienceNavigationWatcherState.initial() = _Initial;

  const factory ExperienceNavigationWatcherState.noExperience() = _NoExperience;

  const factory ExperienceNavigationWatcherState.navigatingExperience(Experience experience) = _NavigatingExperience;

  const factory ExperienceNavigationWatcherState.finishExperience(Experience experience) = _FinishExperience;
}
