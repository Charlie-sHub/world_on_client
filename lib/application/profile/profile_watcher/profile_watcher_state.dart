part of 'profile_watcher_bloc.dart';

@freezed
abstract class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState.initial() = _Initial;

  const factory ProfileWatcherState.loading() = _Loading;

  const factory ProfileWatcherState.own() = _Own;

  const factory ProfileWatcherState.foreign() = _Foreign;

  const factory ProfileWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
