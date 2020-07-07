part of 'experience_log_watcher_bloc.dart';

@freezed
abstract class ExperienceLogWatcherState with _$ExperienceLogWatcherState {
  const factory ExperienceLogWatcherState.initial() = _Initial;

  const factory ExperienceLogWatcherState.loadInProgress() = _LoadInProgress;

  const factory ExperienceLogWatcherState.loadSuccess(Set<Experience> experienceSet) = _LoadSuccess;

  const factory ExperienceLogWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
