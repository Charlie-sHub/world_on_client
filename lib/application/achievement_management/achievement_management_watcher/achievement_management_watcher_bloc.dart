import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'achievement_management_watcher_event.dart';

part 'achievement_management_watcher_state.dart';

class AchievementManagementWatcherBloc extends Bloc<AchievementManagementWatcherEvent, AchievementManagementWatcherState> {
  @override
  AchievementManagementWatcherState get initialState => InitialAchievementManagementWatcherState();

  @override
  Stream<AchievementManagementWatcherState> mapEventToState(AchievementManagementWatcherEvent event) async* {
    // TODO: Add your event logic
  }
}
