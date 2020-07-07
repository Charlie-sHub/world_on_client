part of 'profile_interests_watcher_bloc.dart';

@freezed
abstract class ProfileInterestsWatcherState with _$ProfileInterestsWatcherState {
  const factory ProfileInterestsWatcherState.initial() = _Initial;

  const factory ProfileInterestsWatcherState.loadInProgress() = _LoadInProgress;

  const factory ProfileInterestsWatcherState.loadSuccess(Set<Tag> interests) = _LoadSuccess;

  const factory ProfileInterestsWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
