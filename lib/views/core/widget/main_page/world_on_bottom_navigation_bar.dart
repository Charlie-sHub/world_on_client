import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';

class WorldOnBottomNavigationBar extends StatelessWidget {
  static const _mainFeedIndex = 0;
  static const _searchIndex = 1;
  static const _experienceFormIndex = 2;
  static const _navigationIndex = 3;
  static const _profileIndex = 4;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onTap(index, context),
      currentIndex: context.bloc<NavigationActorBloc>().state.map(
            mainFeedView: (context) => _mainFeedIndex,
            searchView: (context) => _searchIndex,
            experienceFormView: (context) => _experienceFormIndex,
            navigateExperienceView: (context) => _navigationIndex,
            profileView: (context) => _profileIndex,
            errorView: (context) => _mainFeedIndex,
            notificationsView: (context) => _profileIndex,
          ),
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          title: Text("Feed"),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.search),
          title: Text("Search"),
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.plusCircle),
          title: Text("Create"),
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidCompass),
          title: Text("Explore"),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userAlt),
          title: Text("Profile"),
          backgroundColor: Colors.purple,
        ),
      ],
    );
  }

  void onTap(int index, BuildContext context) {
    switch (index) {
      case _mainFeedIndex:
        context.bloc<NavigationActorBloc>().add(const NavigationActorEvent.mainFeedTapped());
        break;
      case _searchIndex:
        context.bloc<NavigationActorBloc>().add(const NavigationActorEvent.searchTapped());
        break;
      case _experienceFormIndex:
        context.bloc<NavigationActorBloc>().add(NavigationActorEvent.experienceFormTapped(none()));
        break;
      case _navigationIndex:
        context.bloc<NavigationActorBloc>().add(NavigationActorEvent.experienceNavigationTapped(none()));
        break;
      case _profileIndex:
        context.bloc<NavigationActorBloc>().add(NavigationActorEvent.profileTapped(none()));
        break;
      default:
        context.bloc<NavigationActorBloc>().add(const NavigationActorEvent.mainFeedTapped());
        break;
    }
  }
}
