import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class WorldOnBottomNavigationBar extends StatelessWidget {
  static const _navigationIndex = 0;
  static const _searchIndex = 1;
  static const _mainFeedIndex = 2;
  static const _profileIndex = 3;

  @override
  Widget build(BuildContext context) => AnimatedBottomNavigationBar(
        notchSmoothness: NotchSmoothness.defaultEdge,
        notchMargin: 3,
        height: kBottomNavigationBarHeight - 15,
        iconSize: 32,
        backgroundColor: WorldOnColors.background,
        onTap: (index) => _onTap(index, context),
        gapLocation: GapLocation.end,
        activeIndex: _getCurrentIndex(context),
        activeColor: WorldOnColors.primary,
        inactiveColor: WorldOnColors.accent,
        icons: const [
          Icons.explore_rounded,
          Icons.search_rounded,
          Icons.home_rounded,
          Icons.person_rounded,
        ],
      );

  int _getCurrentIndex(BuildContext context) =>
      context.read<NavigationActorBloc>().state.map(
            mainFeedView: (context) => _mainFeedIndex,
            searchView: (context) => _searchIndex,
            navigateExperienceView: (context) => _navigationIndex,
            profileView: (context) => _profileIndex,
            errorView: (context) => _mainFeedIndex,
            notificationsView: (context) => _profileIndex,
          );

  void _onTap(int index, BuildContext context) {
    switch (index) {
      case _navigationIndex:
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                none(),
              ),
            );
        break;
      case _searchIndex:
        context.read<NavigationActorBloc>().add(
              const NavigationActorEvent.searchTapped(),
            );
        break;
      case _mainFeedIndex:
        context.read<NavigationActorBloc>().add(
              const NavigationActorEvent.mainFeedTapped(),
            );
        break;
      case _profileIndex:
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.profileTapped(
                currentUserProfile: false,
                userIdOption: none(),
              ),
            );
        break;
      default:
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                none(),
              ),
            );
        break;
    }
  }
}
