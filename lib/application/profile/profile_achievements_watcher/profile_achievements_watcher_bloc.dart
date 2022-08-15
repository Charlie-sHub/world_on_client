import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/watch_user_achievements.dart';
import 'package:worldon/injection.dart';

part 'profile_achievements_watcher_bloc.freezed.dart';
part 'profile_achievements_watcher_event.dart';
part 'profile_achievements_watcher_state.dart';

@injectable
class ProfileAchievementsWatcherBloc extends Bloc<
    ProfileAchievementsWatcherEvent, ProfileAchievementsWatcherState> {
  ProfileAchievementsWatcherBloc()
      : super(const ProfileAchievementsWatcherState.initial()) {
    on<_WatchAchievementsStarted>(_onWatchAchievementsStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Achievement>>>?
      _userAchievementsStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrAchievements.fold(
        (failure) => ProfileAchievementsWatcherState.loadFailure(failure),
        (tags) => ProfileAchievementsWatcherState.loadSuccess(tags),
      ),
    );
  }

  Future<void> _onWatchAchievementsStarted(
    _WatchAchievementsStarted event,
    Emitter emit,
  ) async {
    emit(const ProfileAchievementsWatcherState.loadInProgress());
    await _userAchievementsStreamSubscription?.cancel();
    _userAchievementsStreamSubscription = getIt<WatchUserAchievements>()(
      Params(userId: event.user.id),
    ).listen(
      (failureOrAchievements) => add(
        ProfileAchievementsWatcherEvent.resultsReceived(failureOrAchievements),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _userAchievementsStreamSubscription?.cancel();
    return super.close();
  }
}
