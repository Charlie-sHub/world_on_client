import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_blocked_users.dart';
import 'package:worldon/injection.dart';

part 'blocked_watcher_bloc.freezed.dart';
part 'blocked_watcher_event.dart';
part 'blocked_watcher_state.dart';

@injectable
class BlockedWatcherBloc
    extends Bloc<BlockedWatcherEvent, BlockedWatcherState> {
  BlockedWatcherBloc() : super(const BlockedWatcherState.initial()) {
    on<_WatchBlockedUsersStarted>(_onWatchBlockedUsersStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<User>>>?
      _blockedUsersStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrUsers.fold(
        (failure) => BlockedWatcherState.loadFailure(failure),
        (blockedUsers) => BlockedWatcherState.loadSuccess(blockedUsers),
      ),
    );
  }

  FutureOr<void> _onWatchBlockedUsersStarted(
    _WatchBlockedUsersStarted event,
    Emitter emit,
  ) async {
    emit(const BlockedWatcherState.loadInProgress());
    await _blockedUsersStreamSubscription?.cancel();
    _blockedUsersStreamSubscription = getIt<WatchBlockedUsers>()(
      Params(id: event.user.id),
    ).listen(
      (failureOrUsers) =>
          add(BlockedWatcherEvent.resultsReceived(failureOrUsers)),
    );
  }

  @override
  Future<void> close() async {
    await _blockedUsersStreamSubscription?.cancel();
    return super.close();
  }
}
