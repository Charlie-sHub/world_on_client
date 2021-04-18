part of 'recommended_experiences_watcher_bloc.dart';

@freezed
class RecommendedExperiencesWatcherState with _$RecommendedExperiencesWatcherState {
  const factory RecommendedExperiencesWatcherState.initial() = _Initial;

  const factory RecommendedExperiencesWatcherState.loadInProgress() = _LoadInProgress;

  const factory RecommendedExperiencesWatcherState.loadSuccess(KtList<Experience> experiences) = _LoadSuccess;

  const factory RecommendedExperiencesWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
