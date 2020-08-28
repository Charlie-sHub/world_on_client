import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_followed_users.dart' as load_followed_users;
import 'package:worldon/domain/profile/use_case/watch_following_users.dart' as load_following_users;
import 'package:worldon/injection.dart';

part 'profile_users_watcher_bloc.freezed.dart';
part 'profile_users_watcher_event.dart';
part 'profile_users_watcher_state.dart';

/// Loads the [User]s followed by the given [User]
@injectable
class ProfileUsersWatcherBloc extends Bloc<ProfileUsersWatcherEvent, ProfileUsersWatcherState> {
  StreamSubscription<Either<Failure, KtList<User>>> _userStreamSubscription;

  ProfileUsersWatcherBloc() : super(const ProfileUsersWatcherState.initial());

  @override
  Stream<ProfileUsersWatcherState> mapEventToState(ProfileUsersWatcherEvent event) async* {
    yield* event.map(
      watchFollowingUsersStarted: _onWatchFollowingUsersStarted,
      watchFollowedUsersStarted: _onWatchFollowedUsersStarted,
      usersReceived: _onUsersReceived,
    );
  }

  Stream<ProfileUsersWatcherState> _onWatchFollowingUsersStarted(_WatchFollowingUsersStarted event) async* {
    yield const ProfileUsersWatcherState.loadInProgress();
    await _userStreamSubscription?.cancel();
    final _loadFollowingUsers = getIt<load_following_users.WatchFollowingUsers>();
    _userStreamSubscription = _loadFollowingUsers(
      load_following_users.Params(id: event.user.id),
    ).listen(
      (failureOrUsers) => add(ProfileUsersWatcherEvent.usersReceived(failureOrUsers)),
    );
  }

  Stream<ProfileUsersWatcherState> _onWatchFollowedUsersStarted(_WatchFollowedUsersStarted event) async* {
    yield const ProfileUsersWatcherState.loadInProgress();
    await _userStreamSubscription?.cancel();
    final _loadFollowedUsers = getIt<load_followed_users.WatchFollowedUsers>();
    _userStreamSubscription = _loadFollowedUsers(
      load_followed_users.Params(id: event.user.id),
    ).listen(
      (failureOrUsers) => add(ProfileUsersWatcherEvent.usersReceived(failureOrUsers)),
    );
  }

  Stream<ProfileUsersWatcherState> _onUsersReceived(_UsersReceived event) async* {
    yield event.failureOrUsers.fold(
      (failure) => ProfileUsersWatcherState.loadFailure(failure),
      (users) => ProfileUsersWatcherState.loadSuccess(users),
    );
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
