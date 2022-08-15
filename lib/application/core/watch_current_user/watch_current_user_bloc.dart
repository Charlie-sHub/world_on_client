import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/use_case/watch_current_user.dart';
import 'package:worldon/injection.dart';

part 'watch_current_user_bloc.freezed.dart';
part 'watch_current_user_event.dart';
part 'watch_current_user_state.dart';

@injectable
class WatchCurrentUserBloc
    extends Bloc<WatchCurrentUserEvent, WatchCurrentUserState> {
  WatchCurrentUserBloc() : super(const WatchCurrentUserState.initial()) {
    on<_WatchCurrentUserStarted>(_onWatchCurrentUserStarted);
    on<_ResultReceived>(_onResultReceived);
  }

  StreamSubscription<Either<Failure, User>>? _userStreamSubscription;

  void _onResultReceived(_ResultReceived event, Emitter emit) {
    emit(
      event.failureOrUser.fold(
        (failure) => WatchCurrentUserState.loadFailure(failure),
        (user) => WatchCurrentUserState.loadSuccess(user),
      ),
    );
  }

  FutureOr<void> _onWatchCurrentUserStarted(_, Emitter emit) async {
    await _userStreamSubscription?.cancel();
    _userStreamSubscription = getIt<WatchCurrentUser>()(
      getIt<NoParams>(),
    ).listen(
      (failureOrUser) => add(
        WatchCurrentUserEvent.resultReceived(failureOrUser),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
