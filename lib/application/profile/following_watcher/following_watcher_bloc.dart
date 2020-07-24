import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_following_users.dart';
import 'package:worldon/injection.dart';

part 'following_watcher_bloc.freezed.dart';
part 'following_watcher_event.dart';
part 'following_watcher_state.dart';

/// Loads the [User]s following the given [User]
@Deprecated("The ProfileUsersWatcher shows both following and followed users, so it will be used instead")
@injectable
class FollowingWatcherBloc extends Bloc<FollowingWatcherEvent, FollowingWatcherState> {
  FollowingWatcherBloc() : super(const FollowingWatcherState.initial());

  @override
  Stream<FollowingWatcherState> mapEventToState(FollowingWatcherEvent event) async* {
    yield* event.map(
      watchFollowingUsersStarted: onFollowingUsersLoaded,
    );
  }

  Stream<FollowingWatcherState> onFollowingUsersLoaded(_WatchFollowingUsersStarted event) async* {
    yield const FollowingWatcherState.loadInProgress();
    final _loadFollowingUsers = getIt<LoadFollowingUsers>();
    yield* _loadFollowingUsers(
      Params(id: event.user.id),
    ).map(
      (failureOrFollowingUsers) => failureOrFollowingUsers.fold(
        (failure) => FollowingWatcherState.loadFailure(failure),
        (followingUsers) => FollowingWatcherState.loadSuccess(followingUsers),
      ),
    );
  }
}
