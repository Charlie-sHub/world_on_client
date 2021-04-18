part of 'search_experiences_by_name_watcher_bloc.dart';

@freezed
class SearchExperiencesByNameWatcherEvent with _$SearchExperiencesByNameWatcherEvent {
  const factory SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(SearchTerm searchTerm) = _WatchExperiencesFoundByNameStarted;

  const factory SearchExperiencesByNameWatcherEvent.searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _SearchResultsReceived;
}
