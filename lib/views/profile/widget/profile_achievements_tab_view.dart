import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/cards/achievement_card.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/error/error_display.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';

import '../../../injection.dart';

class ProfileAchievementsTabView extends StatelessWidget {
  const ProfileAchievementsTabView({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileAchievementsWatcherBloc>()
        ..add(
          ProfileAchievementsWatcherEvent.watchAchievementsStarted(user),
        ),
      child: BlocConsumer<ProfileAchievementsWatcherBloc, ProfileAchievementsWatcherState>(
        listener: (context, state) {},
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => WorldOnProgressIndicator(),
          loadSuccess: (state) => ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: state.achievements.size,
            itemBuilder: (context, index) {
              final _achievement = state.achievements[index];
              if (_achievement.isValid) {
                return AchievementCard(achievement: _achievement);
              } else {
                return ErrorCard(
                  entityType: "Achievement",
                  valueFailureString: _achievement.failureOption.fold(
                    () => "",
                    (failure) => failure.toString(),
                  ),
                );
              }
            },
          ),
          loadFailure: (state) => InkWell(
            onTap: () async =>
              context.bloc<ProfileAchievementsWatcherBloc>().add(
                ProfileAchievementsWatcherEvent.watchAchievementsStarted(user),
              ),
            child: ErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}
