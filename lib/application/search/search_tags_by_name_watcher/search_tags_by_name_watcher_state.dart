part of 'search_tags_by_name_watcher_bloc.dart';

@freezed
abstract class SearchTagsByNameWatcherState with _$SearchTagsByNameWatcherState {
  const factory SearchTagsByNameWatcherState.initial() = _Initial;

  const factory SearchTagsByNameWatcherState.searchInProgress() = _SearchInProgress;

  const factory SearchTagsByNameWatcherState.searchSuccess(KtList<Tag> tagsFound) = _SearchSuccess;

  const factory SearchTagsByNameWatcherState.searchFailure(Failure<dynamic> failure) = _SearchFailure;
}
