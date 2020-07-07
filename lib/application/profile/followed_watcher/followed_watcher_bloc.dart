import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_followed_users.dart';
import 'package:worldon/injection.dart';

part 'followed_watcher_bloc.freezed.dart';

part 'followed_watcher_event.dart';

part 'followed_watcher_state.dart';

/// Loads the [User]s followed by the given [User]
@injectable
class FollowedWatcherBloc extends Bloc<FollowedWatcherEvent, FollowedWatcherState> {
  FollowedWatcherBloc() : super(const FollowedWatcherState.initial());

  @override
  Stream<FollowedWatcherState> mapEventToState(FollowedWatcherEvent event) async* {
    yield* event.map(
      watchFollowedUsersStarted: onWatchFollowedUsersStarted,
    );
  }

  Stream<FollowedWatcherState> onWatchFollowedUsersStarted(_WatchFollowedUsersStarted event) async* {
    yield const FollowedWatcherState.loadInProgress();
    final _loadFollowedUsers = getIt<LoadFollowedUsers>();
    yield* _loadFollowedUsers(
      Params(
        id: event.user.id,
      ),
    ).map(
      (failureOrFollowedUsers) => failureOrFollowedUsers.fold(
        (failure) => FollowedWatcherState.loadFailure(failure),
        (followedUsers) => FollowedWatcherState.loadSuccess(followedUsers),
      ),
    );
  }
}
