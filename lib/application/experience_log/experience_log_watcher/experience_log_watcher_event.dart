part of 'experience_log_watcher_bloc.dart';

@freezed
class ExperienceLogWatcherEvent with _$ExperienceLogWatcherEvent {
  const factory ExperienceLogWatcherEvent.watchExperiencesLogStarted() = _WatchExperiencesLogStarted;

  const factory ExperienceLogWatcherEvent.resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _ResultsReceived;
}
