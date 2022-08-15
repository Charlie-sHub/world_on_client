import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/watch_profile.dart';
import 'package:worldon/injection.dart';

part 'profile_watcher_bloc.freezed.dart';
part 'profile_watcher_event.dart';
part 'profile_watcher_state.dart';

@injectable
class ProfileWatcherBloc
    extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  ProfileWatcherBloc() : super(const ProfileWatcherState.initial()) {
    on<_WatchProfileStarted>(onWatchProfileStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, User>>?
      _newProfileUpdateStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrUser.fold(
        (failure) => const ProfileWatcherState.failure(),
        (user) => ProfileWatcherState.newProfileUpdate(user),
      ),
    );
  }

  FutureOr<void> onWatchProfileStarted(
    _WatchProfileStarted event,
    Emitter emit,
  ) async {
    await _newProfileUpdateStreamSubscription?.cancel();
    _newProfileUpdateStreamSubscription = getIt<WatchProfile>()(
      Params(userId: event.userId),
    ).listen(
      (failureOrUser) => add(
        ProfileWatcherEvent.resultsReceived(failureOrUser),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _newProfileUpdateStreamSubscription?.cancel();
    return super.close();
  }
}
