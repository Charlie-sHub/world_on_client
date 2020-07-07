import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/profile/use_case/load_user_achievements.dart';

import '../../../injection.dart';

part 'profile_achievements_watcher_bloc.freezed.dart';

part 'profile_achievements_watcher_event.dart';

part 'profile_achievements_watcher_state.dart';

@injectable
class ProfileAchievementsWatcherBloc extends Bloc<ProfileAchievementsWatcherEvent, ProfileAchievementsWatcherState> {
  ProfileAchievementsWatcherBloc() : super(const ProfileAchievementsWatcherState.initial());

  @override
  Stream<ProfileAchievementsWatcherState> mapEventToState(ProfileAchievementsWatcherEvent event) async* {
    yield* event.map(
      watchAchievementsStarted: onWatchAchievementsStarted,
    );
  }

  Stream<ProfileAchievementsWatcherState> onWatchAchievementsStarted(_WatchAchievementsStarted event) async* {
    yield const ProfileAchievementsWatcherState.loadInProgress();
    final _loadAchievements = getIt<LoadUserAchievements>();
    yield* _loadAchievements(
      Params(
        userId: event.user.id,
      ),
    ).map(
      (failureOrTags) => failureOrTags.fold(
        (failure) => ProfileAchievementsWatcherState.loadFailure(failure),
        (tags) => ProfileAchievementsWatcherState.loadSuccess(tags),
      ),
    );
  }
}
