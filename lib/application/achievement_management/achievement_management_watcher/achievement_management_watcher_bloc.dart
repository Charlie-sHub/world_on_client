import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
  @override
  AchievementManagementWatcherState get initialState => const AchievementManagementWatcherState.initial();

  @override
  Stream<AchievementManagementWatcherState> mapEventToState(AchievementManagementWatcherEvent event) async* {
    yield* event.map(
      loadAllAchievements: onLoadAllAchievements,
    );
  }
  
  Stream<AchievementManagementWatcherState> onLoadAllAchievements(_LoadAllAchievements event) async* {
    yield const AchievementManagementWatcherState.loading();
    final _getAllAchievements = getIt<GetAllAchievements>();
    yield* _getAllAchievements(getIt<NoParams>()).map(
        (failureOrAchievements) =>
        failureOrAchievements.fold(
            (failure) => AchievementManagementWatcherState.loadFailure(failure),
            (achievements) => AchievementManagementWatcherState.loadSuccess(achievements),
        ),
    );
  }
}
