import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class WorldOnBottomNavigationBar extends StatelessWidget {
  static const _mainFeedIndex = 0;
  static const _searchIndex = 1;
  static const _experienceFormIndex = 2;
  static const _navigationIndex = 3;
  static const _profileIndex = 4;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => _onTap(index, context),
      currentIndex: context.read<NavigationActorBloc>().state.map(
            mainFeedView: (context) => _mainFeedIndex,
            searchView: (context) => _searchIndex,
            experienceFormView: (context) => _experienceFormIndex,
            navigateExperienceView: (context) => _navigationIndex,
            profileView: (context) => _profileIndex,
            errorView: (context) => _mainFeedIndex,
            notificationsView: (context) => _profileIndex,
          ),
      items: [
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.home),
          label: S.of(context).bottomNavigationBarFeed,
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.search),
          label: S.of(context).bottomNavigationBarSearch,
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.plusCircle),
          label: S.of(context).bottomNavigationBarCreate,
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.solidCompass),
          label: S.of(context).bottomNavigationBarExplore,
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.userAlt),
          label: S.of(context).bottomNavigationBarProfile,
          backgroundColor: Colors.purple,
        ),
      ],
    );
  }

  void _onTap(int index, BuildContext context) {
    switch (index) {
      case _mainFeedIndex:
        context.read<NavigationActorBloc>().add(
              const NavigationActorEvent.mainFeedTapped(),
            );
        break;
      case _searchIndex:
        context.read<NavigationActorBloc>().add(
              const NavigationActorEvent.searchTapped(),
            );
        break;
      case _experienceFormIndex:
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceFormTapped(
                none(),
              ),
            );
        break;
      case _navigationIndex:
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                none(),
              ),
            );
        break;
      case _profileIndex:
        context.read<NavigationActorBloc>().add(
              NavigationActorEvent.profileTapped(
                currentUserProfile: false,
                userOption: none(),
              ),
            );
        break;
      default:
        context.read<NavigationActorBloc>().add(
              const NavigationActorEvent.mainFeedTapped(),
            );
        break;
    }
  }
}
