part of 'search_tags_by_name_watcher_bloc.dart';

@freezed
abstract class SearchTagsByNameWatcherEvent with _$SearchTagsByNameWatcherEvent {
  const factory SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(SearchTerm searchTerm) = _WatchTagsFoundByNameStarted;
}
