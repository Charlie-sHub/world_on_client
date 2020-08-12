import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';

class WorldOnBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onTap(index, context),
      currentIndex: context.bloc<NavigationActorBloc>().state.map(
            mainFeedView: (context) => 0,
            searchView: (context) => 1,
            experienceFormView: (context) => 2,
            navigateExperienceView: (context) => 3,
            profileView: (context) => 4,
            // These shouldn't change the selected index though
            errorView: (context) => 0,
            notificationsView: (context) => 4,
          ),
      items: [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          title: const Text("Feed"),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.search),
          title: const Text("Search"),
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.plusCircle),
          title: const Text("Create"),
          backgroundColor: Colors.orange,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidCompass),
          title: const Text("Explore"),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userAlt),
          title: const Text("Profile"),
          backgroundColor: Colors.purple,
        ),
      ],
    );
  }

  void onTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.bloc<NavigationActorBloc>().add(const NavigationActorEvent.mainFeedTapped());
        break;
      case 1:
        context.bloc<NavigationActorBloc>().add(const NavigationActorEvent.searchTapped());
        break;
      case 2:
        context.bloc<NavigationActorBloc>().add(NavigationActorEvent.experienceFormTapped(none()));
        break;
      case 3:
        context.bloc<NavigationActorBloc>().add(NavigationActorEvent.experienceNavigationTapped(none()));
        break;
      case 4:
        context.bloc<NavigationActorBloc>().add(NavigationActorEvent.profileTapped(none()));
        break;
      default:
        // Perhaps this should go to an error page
        context.bloc<NavigationActorBloc>().add(const NavigationActorEvent.mainFeedTapped());
        break;
    }
  }
}
