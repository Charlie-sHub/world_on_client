import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/bottom_navigation/bottom_navigation_actor/bottom_navigation_actor_bloc.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/main_feed/widget/main_feed_body.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.maybeMap(
        authenticationFailure: (_) => ExtendedNavigator.of(context).pushReplacementNamed(Routes.logInPage),
        orElse: () => null,
      ),
      child: BlocProvider(
        create: (context) => getIt<BottomNavigationActorBloc>(),
        child: BlocBuilder<BottomNavigationActorBloc, BottomNavigationActorState>(
          builder: (context, state) => Scaffold(
            appBar: const WorldOnAppBar(),
            body: context.bloc<BottomNavigationActorBloc>().state.map(
                  mainFeedView: (context) => MainFeedBody(),
                  searchView: (context) => const Center(
                    // Use a Bloc to navigate between the tabs, each tab change event receiving the search term as a parameter
                    child: Text("Search"),
                  ),
                  createExperienceView: (context) => const Center(
                    child: Text("Create Experience"),
                  ),
                  navigateExperienceView: (context) => const Center(
                    child: Text("Navigate Experience"),
                  ),
                  profileView: (context) => const Center(
                    child: Text("Profile"),
                  ),
                  errorView: (context) => const Center(
                    child: Text("Error"),
                  ),
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
      onTap: (index) =>
        context.bloc<BottomNavigationActorBloc>().add(
          BottomNavigationActorEvent.itemTapped(index),
        ),
      currentIndex: context
        .bloc<BottomNavigationActorBloc>()
        .state
        .map(
        mainFeedView: (context) => 0,
        searchView: (context) => 1,
        createExperienceView: (context) => 2,
        navigateExperienceView: (context) => 3,
        profileView: (context) => 4,
        errorView: (context) => 0,
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
          backgroundColor: Colors.yellow,
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
          // TODO: Wrap in bloc that checks if there are new notifications
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
      onPressed: () {
        // TODO: Navigate to NotificationsPage
      },
    );
  }
}
