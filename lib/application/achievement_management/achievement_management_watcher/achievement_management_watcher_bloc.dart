import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/use_case/watch_all_achievements.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'achievement_management_watcher_bloc.freezed.dart';
part 'achievement_management_watcher_event.dart';
part 'achievement_management_watcher_state.dart';

@injectable
class AchievementManagementWatcherBloc extends Bloc<
    AchievementManagementWatcherEvent, AchievementManagementWatcherState> {
  AchievementManagementWatcherBloc()
      : super(const AchievementManagementWatcherState.initial()) {
    on<_WatchAllAchievementsStarted>(_onWatchAllAchievementsStarted);
    on<_ResultsReceived>(_onSearchResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Achievement>>>?
      _achievementsStreamSubscription;

  void _onSearchResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrAchievements.fold(
        (failure) => AchievementManagementWatcherState.loadFailure(
          failure,
        ),
        (achievements) => AchievementManagementWatcherState.loadSuccess(
          achievements,
        ),
      ),
    );
  }

  FutureOr<void> _onWatchAllAchievementsStarted(_, Emitter emit) async {
    emit(const AchievementManagementWatcherState.loadInProgress());
    await _achievementsStreamSubscription?.cancel();
    _achievementsStreamSubscription = getIt<WatchAllAchievements>()(
      getIt<NoParams>(),
    ).listen(
      (_failureOrAchievements) => add(
        AchievementManagementWatcherEvent.resultsReceived(
          _failureOrAchievements,
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _achievementsStreamSubscription?.cancel();
    return super.close();
  }
}
