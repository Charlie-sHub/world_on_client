import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_user_interests.dart';

import '../../../injection.dart';

part 'profile_interests_watcher_bloc.freezed.dart';
part 'profile_interests_watcher_event.dart';
part 'profile_interests_watcher_state.dart';

@injectable
class ProfileInterestsWatcherBloc extends Bloc<ProfileInterestsWatcherEvent, ProfileInterestsWatcherState> {
  ProfileInterestsWatcherBloc() : super(const ProfileInterestsWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<Tag>>> _userInterestsStreamSubscription;

  @override
  Stream<ProfileInterestsWatcherState> mapEventToState(ProfileInterestsWatcherEvent event) async* {
    yield* event.map(
      watchInterestsStarted: _onWatchInterestsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<ProfileInterestsWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrTags.fold(
      (failure) => ProfileInterestsWatcherState.loadFailure(failure),
      (tags) => ProfileInterestsWatcherState.loadSuccess(tags),
    );
  }

  Stream<ProfileInterestsWatcherState> _onWatchInterestsStarted(_WatchInterestsStarted event) async* {
    yield const ProfileInterestsWatcherState.loadInProgress();
    await _userInterestsStreamSubscription?.cancel();
    _userInterestsStreamSubscription = getIt<WatchUserInterests>()(
      Params(userId: event.user.id),
    ).listen(
      (_failureOrTags) => add(ProfileInterestsWatcherEvent.resultsReceived(_failureOrTags)),
    );
  }

  @override
  Future<void> close() async {
    await _userInterestsStreamSubscription?.cancel();
    return super.close();
  }
}
