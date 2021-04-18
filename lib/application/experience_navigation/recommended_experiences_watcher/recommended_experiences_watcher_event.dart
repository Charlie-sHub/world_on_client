part of 'recommended_experiences_watcher_bloc.dart';

@freezed
class RecommendedExperiencesWatcherEvent with _$RecommendedExperiencesWatcherEvent {
  const factory RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted() = _WatchRecommendedExperiencesStarted;

  const factory RecommendedExperiencesWatcherEvent.resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _ResultsReceived;
}
