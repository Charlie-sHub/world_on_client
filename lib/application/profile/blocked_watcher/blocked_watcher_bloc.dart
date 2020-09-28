import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_blocked_users.dart';

import '../../../injection.dart';

part 'blocked_watcher_bloc.freezed.dart';
part 'blocked_watcher_event.dart';
part 'blocked_watcher_state.dart';

@injectable
class BlockedWatcherBloc extends Bloc<BlockedWatcherEvent, BlockedWatcherState> {
  BlockedWatcherBloc() : super(const BlockedWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<User>>> _blockedUsersStreamSubscription;

  @override
  Stream<BlockedWatcherState> mapEventToState(BlockedWatcherEvent event) async* {
    yield* event.map(
      watchBlockedUsersStarted: _onWatchBlockedUsersStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<BlockedWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrUsers.fold(
      (failure) => BlockedWatcherState.loadFailure(failure),
      (blockedUsers) => BlockedWatcherState.loadSuccess(blockedUsers),
    );
  }

  Stream<BlockedWatcherState> _onWatchBlockedUsersStarted(_WatchBlockedUsersStarted event) async* {
    yield const BlockedWatcherState.loadInProgress();
    await _blockedUsersStreamSubscription?.cancel();
    _blockedUsersStreamSubscription = getIt<WatchBlockedUsers>()(
      Params(id: event.user.id),
    ).listen(
      (_failureOrUsers) => add(BlockedWatcherEvent.resultsReceived(_failureOrUsers)),
    );
  }

  @override
  Future<void> close() async {
    await _blockedUsersStreamSubscription?.cancel();
    return super.close();
  }
}
