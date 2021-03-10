import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_achievements_watcher/profile_achievements_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/achievement_card.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

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
          loadInProgress: (_) => const WorldOnProgressIndicator(),
          loadSuccess: (state) => ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            itemCount: state.achievements.size,
            itemBuilder: (context, index) {
              final _achievement = state.achievements[index];
              if (_achievement.isValid) {
                return AchievementCard(
                  achievement: _achievement,
                  key: Key(_achievement.id.toString()),
                );
              } else {
                return ErrorCard(
                  entityType: S.of(context).achievement,
                  valueFailureString: _achievement.failureOption.fold(
                      () => S.of(context).noError,
                      (failure) => failure.toString(),
                  ),
                );
              }
            },
          ),
          loadFailure: (state) => ErrorDisplay(
            retryFunction: () => context.bloc<ProfileAchievementsWatcherBloc>().add(
                  ProfileAchievementsWatcherEvent.watchAchievementsStarted(user),
                ),
            failure: state.failure,
            specificMessage: some(S.of(context).notFoundErrorAchievements),
          ),
        ),
      ),
    );
  }
}
