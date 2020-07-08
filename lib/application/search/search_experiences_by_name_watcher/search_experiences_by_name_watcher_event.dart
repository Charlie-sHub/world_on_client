part of 'search_experiences_by_name_watcher_bloc.dart';

@freezed
abstract class SearchExperiencesByNameWatcherEvent with _$SearchExperiencesByNameWatcherEvent {
  const factory SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(SearchTerm searchTerm) = _WatchExperiencesFoundByNameStarted;
}
