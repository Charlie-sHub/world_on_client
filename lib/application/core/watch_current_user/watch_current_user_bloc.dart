import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/use_case/watch_current_user.dart';

import '../../../injection.dart';

part 'watch_current_user_bloc.freezed.dart';
part 'watch_current_user_event.dart';
part 'watch_current_user_state.dart';

@injectable
class WatchCurrentUserBloc extends Bloc<WatchCurrentUserEvent, WatchCurrentUserState> {
  WatchCurrentUserBloc() : super(const WatchCurrentUserState.initial());

  StreamSubscription<Either<Failure, User>>? _userStreamSubscription;

  @override
  Stream<WatchCurrentUserState> mapEventToState(WatchCurrentUserEvent event) async* {
    yield* event.map(
      watchCurrentUserStarted: _onWatchCurrentUserStarted,
      resultReceived: _onResultReceived,
    );
  }

  Stream<WatchCurrentUserState> _onResultReceived(_ResultReceived event) async* {
    yield event.failureOrUser.fold(
      (_failure) => WatchCurrentUserState.loadFailure(_failure),
      (_user) => WatchCurrentUserState.loadSuccess(_user),
    );
  }

  Stream<WatchCurrentUserState> _onWatchCurrentUserStarted(_) async* {
    await _userStreamSubscription?.cancel();
    _userStreamSubscription = getIt<WatchCurrentUser>()(
      getIt<NoParams>(),
    ).listen(
      (_failureOrUser) => add(
        WatchCurrentUserEvent.resultReceived(_failureOrUser),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    return super.close();
  }
}
