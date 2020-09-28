import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_user_achievements.dart';

import '../../../injection.dart';

part 'profile_achievements_watcher_bloc.freezed.dart';
part 'profile_achievements_watcher_event.dart';
part 'profile_achievements_watcher_state.dart';

@injectable
class ProfileAchievementsWatcherBloc extends Bloc<ProfileAchievementsWatcherEvent, ProfileAchievementsWatcherState> {
  ProfileAchievementsWatcherBloc() : super(const ProfileAchievementsWatcherState.initial());
  StreamSubscription<Either<Failure, KtList<Achievement>>> _userAchievementsStreamSubscription;

  @override
  Stream<ProfileAchievementsWatcherState> mapEventToState(ProfileAchievementsWatcherEvent event) async* {
    yield* event.map(
      watchAchievementsStarted: _onWatchAchievementsStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<ProfileAchievementsWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrAchievements.fold(
      (failure) => ProfileAchievementsWatcherState.loadFailure(failure),
      (tags) => ProfileAchievementsWatcherState.loadSuccess(tags),
    );
  }

  Stream<ProfileAchievementsWatcherState> _onWatchAchievementsStarted(_WatchAchievementsStarted event) async* {
    yield const ProfileAchievementsWatcherState.loadInProgress();
    await _userAchievementsStreamSubscription?.cancel();
    _userAchievementsStreamSubscription = getIt<WatchUserAchievements>()(
      Params(userId: event.user.id),
    ).listen(
      (_failureOrAchievements) => add(ProfileAchievementsWatcherEvent.resultsReceived(_failureOrAchievements)),
    );
  }

  @override
  Future<void> close() async {
    await _userAchievementsStreamSubscription?.cancel();
    return super.close();
  }
}
