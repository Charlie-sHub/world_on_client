part of 'search_experiences_by_name_watcher_bloc.dart';

@freezed
abstract class SearchExperiencesByNameWatcherState with _$SearchExperiencesByNameWatcherState {
  const factory SearchExperiencesByNameWatcherState.initial() = _Initial;

  const factory SearchExperiencesByNameWatcherState.searchInProgress() = _SearchInProgress;

  const factory SearchExperiencesByNameWatcherState.searchSuccess(KtList<Experience> experiencesFound) = _SearchSuccess;

  const factory SearchExperiencesByNameWatcherState.searchFailure(Failure<dynamic> failure) = _SearchFailure;
}
