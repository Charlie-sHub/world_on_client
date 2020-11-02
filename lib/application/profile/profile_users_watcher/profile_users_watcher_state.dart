part of 'profile_users_watcher_bloc.dart';

@freezed
abstract class ProfileUsersWatcherState with _$ProfileUsersWatcherState {
  const factory ProfileUsersWatcherState.initial() = _Initial;

  const factory ProfileUsersWatcherState.loadInProgress() = _LoadInProgress;

  const factory ProfileUsersWatcherState.loadSuccess(KtList<User> users) = _LoadSuccess;

  const factory ProfileUsersWatcherState.loadFailure(Failure<dynamic> failure) = _LoadFailure;
}
