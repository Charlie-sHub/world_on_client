import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/app_bar_title/app_bar_title_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class AppBarTitleBuilder extends StatelessWidget {
  const AppBarTitleBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarTitleBloc, AppBarTitleState>(
      builder: (context, state) => Text(
        state
            .map(
              initial: (_) => "World On",
              mainFeed: (_) => S.of(context).mainFeedTitle,
              search: (_) => S.of(context).searchTitle,
              recommendations: (_) => S.of(context).recommendations,
              experienceNavigation: (_) => S.of(context).experienceNavigationTitle,
              experienceFinish: (_) => S.of(context).experienceFinishSuccessTitle,
              profile: (_) => S.of(context).profileTitle,
              notifications: (_) => S.of(context).notifications,
              followers: (_) => S.of(context).followers,
              following: (_) => S.of(context).following,
              username: (_state) => "@${_state.username}",
              error: (_) => "Error",
            )
            .toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          color: WorldOnColors.primary,
        ),
      ),
    );
  }
}
