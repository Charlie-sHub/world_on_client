import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_blocked_users.dart';

import '../../../injection.dart';

part 'blocked_watcher_bloc.freezed.dart';
part 'blocked_watcher_event.dart';
part 'blocked_watcher_state.dart';

@injectable
class BlockedWatcherBloc extends Bloc<BlockedWatcherEvent, BlockedWatcherState> {
  BlockedWatcherBloc() : super(const BlockedWatcherState.initial());

  @override
  Stream<BlockedWatcherState> mapEventToState(BlockedWatcherEvent event) async* {
    yield* event.map(
      watchBlockedUsersStarted: onWatchBlockedUsersStarted,
    );
  }

  Stream<BlockedWatcherState> onWatchBlockedUsersStarted(_WatchBlockedUsersStarted event) async* {
    yield const BlockedWatcherState.loadInProgress();
    final _loadBlockedUsers = getIt<LoadBlockedUsers>();
    yield* _loadBlockedUsers(
      Params(id: event.user.id),
    ).map(
      (failureOrBlockedUsers) => failureOrBlockedUsers.fold(
        (failure) => BlockedWatcherState.loadFailure(failure),
        (blockedUsers) => BlockedWatcherState.loadSuccess(blockedUsers),
      ),
    );
  }
}
