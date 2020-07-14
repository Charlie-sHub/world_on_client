part of 'profile_experiences_watcher_bloc.dart';

@freezed
abstract class ProfileExperiencesWatcherState with _$ProfileExperiencesWatcherState {
  const factory ProfileExperiencesWatcherState.initial() = _Initial;

  const factory ProfileExperiencesWatcherState.loadInProgress() = _LoadInProgress;

  const factory ProfileExperiencesWatcherState.loadSuccess(KtSet<Experience> experiences) = _LoadSuccess;

  const factory ProfileExperiencesWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
