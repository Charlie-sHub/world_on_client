import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/use_case/watch_profile.dart';

import '../../../injection.dart';

part 'profile_watcher_bloc.freezed.dart';

part 'profile_watcher_event.dart';

part 'profile_watcher_state.dart';

@injectable
class ProfileWatcherBloc extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  ProfileWatcherBloc() : super(const ProfileWatcherState.initial());

  StreamSubscription<Either<Failure, User>>? _newProfileUpdateStreamSubscription;

  @override
  Stream<ProfileWatcherState> mapEventToState(ProfileWatcherEvent event) async* {
    yield* event.map(
      watchProfileStarted: onWatchNewNotificationsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<ProfileWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrUser.fold(
      (failure) => const ProfileWatcherState.failure(),
      (_user) => ProfileWatcherState.newProfileUpdate(_user),
    );
  }

  Stream<ProfileWatcherState> onWatchNewNotificationsStarted(_WatchProfileStarted event) async* {
    await _newProfileUpdateStreamSubscription?.cancel();
    _newProfileUpdateStreamSubscription = getIt<WatchProfile>()(Params(userId: event.userId)).listen(
      (_failureOrUser) => add(ProfileWatcherEvent.resultsReceived(_failureOrUser)),
    );
  }

  @override
  Future<void> close() async {
    await _newProfileUpdateStreamSubscription?.cancel();
    return super.close();
  }
}
