import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/main_page/create_experience_floating_button.dart';
import 'package:worldon/views/core/widgets/main_page/world_on_app_bar.dart';
import 'package:worldon/views/core/widgets/main_page/world_on_bottom_navigation_bar.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation_body.dart';
import 'package:worldon/views/main_feed/widgets/main_feed_body.dart';
import 'package:worldon/views/notifications/widgets/notifications_body.dart';
import 'package:worldon/views/profile/widgets/profile_body.dart';
import 'package:worldon/views/search/widget/search_body.dart';

class MainPageScaffold extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> createExperienceShowKey;
  final GlobalKey<State<StatefulWidget>> userLevelShowKey;

  const MainPageScaffold({
    Key? key,
    required this.createExperienceShowKey,
    required this.userLevelShowKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WorldOnAppBar(),
      extendBody: true,
      body: IndexedStack(
        // Feels rather duct tape-ish to return the index this way
        // but changing the state would mess with the rest of the navigation, such as when "participating" in a experience
        index: context.read<NavigationActorBloc>().state.map(
              mainFeedView: (_) => 0,
              searchView: (_) => 1,
              navigateExperienceView: (_) => 2,
              profileView: (_) => 3,
              errorView: (_) => 4,
              notificationsView: (_) => 5,
            ),
        children: <Widget>[
          const MainFeedBody(),
          const SearchBody(),
          ExperienceNavigationBody(
            experienceOption: context.read<NavigationActorBloc>().state.maybeMap(
                  navigateExperienceView: (state) => state.experienceOption,
                  orElse: () => none(),
                ),
          ),
          ProfileBody(
            userIdOption: context.read<NavigationActorBloc>().state.maybeMap(
                  profileView: (state) => state.userIdOption,
                  orElse: () => none(),
                ),
            currentUserProfile: context.read<NavigationActorBloc>().state.maybeMap(
                  profileView: (state) => state.currentUserProfile,
                  orElse: () => true,
                ),
            userLevelShowKey: userLevelShowKey,
          ),
          Center(
            child: Text(S.of(context).error),
          ),
          const NotificationsBody(),
        ],
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CreateExperienceFloatingButton(
        showKey: createExperienceShowKey,
      ),
      bottomNavigationBar: WorldOnBottomNavigationBar(),
    );
  }
}
