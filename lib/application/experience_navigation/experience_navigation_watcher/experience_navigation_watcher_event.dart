part of 'experience_navigation_watcher_bloc.dart';

@freezed
abstract class ExperienceNavigationWatcherEvent with _$ExperienceNavigationWatcherEvent {
  const factory ExperienceNavigationWatcherEvent.initialized(Option<Experience> experienceOption) = _Initialized;

  const factory ExperienceNavigationWatcherEvent.allObjectivesAccomplished(Experience experience) = _AllObjectivesAccomplished;
}
