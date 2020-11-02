part of 'profile_users_watcher_bloc.dart';

@freezed
abstract class ProfileUsersWatcherEvent with _$ProfileUsersWatcherEvent {
  const factory ProfileUsersWatcherEvent.watchFollowedUsersStarted(User user) = _WatchFollowedUsersStarted;

  const factory ProfileUsersWatcherEvent.watchFollowingUsersStarted(User user) = _WatchFollowingUsersStarted;

  const factory ProfileUsersWatcherEvent.usersReceived(Either<Failure, KtList<User>> failureOrUsers) = _UsersReceived;
}
