import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/experience_management/widget/experience_management_form.dart';
import 'package:worldon/views/main_feed/widget/main_feed_body.dart';
import 'package:worldon/views/notifications/widget/notifications_body.dart';
import 'package:worldon/views/profile/widget/profile_body.dart';
import 'package:worldon/views/search/widget/search_body.dart';

import '../../experience_navigation/widget/experience_navigation.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.maybeMap(
        authenticationFailure: (_) => context.navigator.popAndPush(Routes.logInPage),
        orElse: () => null,
      ),
      child: BlocProvider(
        create: (context) => getIt<NavigationActorBloc>(),
        child: BlocBuilder<NavigationActorBloc, NavigationActorState>(
          builder: (context, state) => Scaffold(
            appBar: const WorldOnAppBar(),
            body: IndexedStack(
              // Feels rather duct tape-ish to return the index this way
              // but changing the state would mess with the rest of the navigation, such as when "participating" in a experience
              index: context.bloc<NavigationActorBloc>().state.map(
                    mainFeedView: (_) => 0,
                    searchView: (_) => 1,
                    experienceFormView: (_) => 2,
                    navigateExperienceView: (_) => 3,
                    profileView: (_) => 4,
                    errorView: (_) => 5,
                    notificationsView: (_) => 6,
                  ),
              children: <Widget>[
                const MainFeedBody(),
                const SearchBody(),
                // TODO: Create creation selection view
                // So the Users can select between creating experiences or Tags or even achievements
                ExperienceManagementForm(),
                ExperienceNavigation(
                  experienceOption: context.bloc<NavigationActorBloc>().state.maybeMap(
                        navigateExperienceView: (state) => state.experienceOption,
                        orElse: () => none(),
                      ),
                ),
                ProfileBody(
                  userOption: context.bloc<NavigationActorBloc>().state.maybeMap(
                        profileView: (state) => state.userOption,
                        orElse: () => none(),
                      ),
                ),
                const Center(
                  child: Text("Error"),
                ),
                const NotificationsBody(),
              ],
            ),
            bottomNavigationBar: WorldOnBottomNavigationBar(),
          ),
        ),
      ),
    );
  }
}

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
          icon: FaIcon(FontAwesomeIcons.compass),
          title: const Text("Explore"),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userCircle),
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

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WorldOnAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: FaIcon(FontAwesomeIcons.signOutAlt),
        onPressed: () => context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.loggedOut()),
      ),
      centerTitle: true,
      title: const Text(
        "WORLD ON",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          // TODO: Wrap in bloc that checks if there are unseen notifications
          child: NotificationsButton(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          // TODO: Wrap in bloc that checks if there are new messages
          child: MessagesButton(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MessagesButton extends StatelessWidget {
  const MessagesButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.message,
        size: 35,
      ),
      onPressed: () {
        // TODO: Navigate to MessagesPage
      },
    );
  }
}

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.notifications_none,
        size: 35,
      ),
      onPressed: () => context.bloc<NavigationActorBloc>().add(
            const NavigationActorEvent.notificationsTapped(),
          ),
    );
  }
}
