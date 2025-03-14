part of 'profile_experiences_watcher_bloc.dart';

@freezed
class ProfileExperiencesWatcherState with _$ProfileExperiencesWatcherState {
  const factory ProfileExperiencesWatcherState.initial() = _Initial;

  const factory ProfileExperiencesWatcherState.loadInProgress() = _LoadInProgress;

  const factory ProfileExperiencesWatcherState.loadSuccess(KtList<Experience> experiences) = _LoadSuccess;

  const factory ProfileExperiencesWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
