import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/use_case/get_all_achievements.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'achievement_management_watcher_bloc.freezed.dart';
part 'achievement_management_watcher_event.dart';
part 'achievement_management_watcher_state.dart';

@injectable
class AchievementManagementWatcherBloc extends Bloc<AchievementManagementWatcherEvent, AchievementManagementWatcherState> {
  AchievementManagementWatcherBloc() : super(const AchievementManagementWatcherState.initial());

  @override
  Stream<AchievementManagementWatcherState> mapEventToState(AchievementManagementWatcherEvent event) async* {
    yield* event.map(
      watchAllAchievementsStarted: onWatchAllAchievementsStarted,
    );
  }

  // TODO: Close Streams
  Stream<AchievementManagementWatcherState> onWatchAllAchievementsStarted(_WatchAllAchievementsStarted event) async* {
    // TODO: Check https://bloclibrary.dev/#/flutterinfinitelisttutorial for this and other infinite list blocs
    yield const AchievementManagementWatcherState.loadInProgress();
    final _getAllAchievements = getIt<GetAllAchievements>();
    yield* _getAllAchievements(getIt<NoParams>()).map(
      (failureOrAchievements) => failureOrAchievements.fold(
        (failure) => AchievementManagementWatcherState.loadFailure(failure),
        (achievements) => AchievementManagementWatcherState.loadSuccess(achievements),
      ),
    );
  }
}
