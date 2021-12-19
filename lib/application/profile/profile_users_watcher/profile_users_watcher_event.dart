part of 'profile_users_watcher_bloc.dart';

@freezed
class ProfileUsersWatcherEvent with _$ProfileUsersWatcherEvent {
  const factory ProfileUsersWatcherEvent.watchFollowedUsersStarted(
    UniqueId id,
  ) = _WatchFollowedUsersStarted;

  const factory ProfileUsersWatcherEvent.watchFollowingUsersStarted(
    UniqueId id,
  ) = _WatchFollowingUsersStarted;

  const factory ProfileUsersWatcherEvent.usersReceived(
    Either<Failure, KtList<User>> failureOrUsers,
  ) = _UsersReceived;
}
