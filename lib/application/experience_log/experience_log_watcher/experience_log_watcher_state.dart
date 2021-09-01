part of 'experience_log_watcher_bloc.dart';

@freezed
class ExperienceLogWatcherState with _$ExperienceLogWatcherState {
  const factory ExperienceLogWatcherState.initial() = _Initial;

  const factory ExperienceLogWatcherState.loadInProgress() = _LoadInProgress;

  const factory ExperienceLogWatcherState.loadSuccess(KtList<Experience> experiences) = _LoadSuccess;

  const factory ExperienceLogWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
