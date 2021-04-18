import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/core/user_profile_button_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widgets/main_page/world_on_app_bar.dart';
import 'package:worldon/views/core/widgets/main_page/world_on_bottom_navigation_bar.dart';
import 'package:worldon/views/core/widgets/misc/select_creation_view/select_creation_view.dart';
import 'package:worldon/views/experience_navigation/widgets/experience_navigation_body.dart';
import 'package:worldon/views/main_feed/widgets/main_feed_body.dart';
import 'package:worldon/views/notifications/widgets/notifications_body.dart';
import 'package:worldon/views/profile/widgets/profile_body.dart';
import 'package:worldon/views/search/widget/search_body.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => state.maybeMap(
        unAuthenticated: (_) => context.router.replace(const LogInPageRoute()),
        orElse: () {},
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NavigationActorBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<UserProfileButtonWatcherBloc>()
              ..add(
                const UserProfileButtonWatcherEvent.initialized(),
              ),
          ),
        ],
        child: BlocBuilder<NavigationActorBloc, NavigationActorState>(
          builder: (context, state) => SafeArea(
            child: Scaffold(
              appBar: const WorldOnAppBar(),
              body: IndexedStack(
                // Feels rather duct tape-ish to return the index this way
                // but changing the state would mess with the rest of the navigation, such as when "participating" in a experience
                index: context.read<NavigationActorBloc>().state.map(
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
                  SelectCreationView(),
                  ExperienceNavigationBody(
                    experienceOption: context.read<NavigationActorBloc>().state.maybeMap(
                          navigateExperienceView: (state) => state.experienceOption,
                          orElse: () => none(),
                        ),
                  ),
                  ProfileBody(
                    userOption: context.read<NavigationActorBloc>().state.maybeMap(
                          profileView: (state) => state.userOption,
                          orElse: () => none(),
                        ),
                    currentUserProfile: context.read<NavigationActorBloc>().state.maybeMap(
                          profileView: (state) => state.currentUserProfile,
                          orElse: () => true,
                        ),
                  ),
                  Center(
                    child: Text(S.of(context).error),
                  ),
                  const NotificationsBody(),
                ],
              ),
              bottomNavigationBar: WorldOnBottomNavigationBar(),
            ),
          ),
        ),
      ),
    );
  }
}
