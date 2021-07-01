import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/core/app_bar_title/app_bar_title_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widgets/main_page/create_experience_floating_button.dart';
import 'package:worldon/views/core/widgets/main_page/world_on_app_bar.dart';
import 'package:worldon/views/core/widgets/main_page/world_on_bottom_navigation_bar.dart';
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
            create: (context) => getIt<AppBarTitleBloc>()
              ..add(
                const AppBarTitleEvent.initialized(),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<WatchCurrentUserBloc>()
              ..add(
                const WatchCurrentUserEvent.watchCurrentUserStarted(),
              ),
          ),
        ],
        child: BlocListener<WatchCurrentUserBloc, WatchCurrentUserState>(
          listener: _watchUserListener,
          child: BlocConsumer<NavigationActorBloc, NavigationActorState>(
            listener: _navigationListener,
            builder: (context, state) => SafeArea(
              child: Scaffold(
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
                    ),
                    Center(
                      child: Text(S.of(context).error),
                    ),
                    const NotificationsBody(),
                  ],
                ),
                resizeToAvoidBottomInset: false,
                floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                floatingActionButton: const CreateExperienceFloatingButton(),
                bottomNavigationBar: WorldOnBottomNavigationBar(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _watchUserListener(BuildContext context, WatchCurrentUserState state) => state.maybeMap(
        loadFailure: (_failureState) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: _failureState.failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                    serverError: (failure) => failure.errorString,
                    orElse: () => S.of(context).unknownError,
                  ),
              orElse: () => S.of(context).unknownError),
        ).show(context),
        orElse: () {},
      );

  void _navigationListener(BuildContext context, NavigationActorState state) => state.map(
        mainFeedView: (_) => context.read<AppBarTitleBloc>().add(
              const AppBarTitleEvent.showedMainFeed(),
            ),
        searchView: (_) => context.read<AppBarTitleBloc>().add(
              const AppBarTitleEvent.showedSearch(),
            ),
        navigateExperienceView: (_) => context.read<AppBarTitleBloc>().add(
              const AppBarTitleEvent.showedExperienceNavigation(),
            ),
        profileView: (_) => context.read<AppBarTitleBloc>().add(
              const AppBarTitleEvent.showedProfile(),
            ),
        errorView: (_) => context.read<AppBarTitleBloc>().add(
              const AppBarTitleEvent.initialized(),
            ),
        notificationsView: (_) => context.read<AppBarTitleBloc>().add(
              const AppBarTitleEvent.showedNotifications(),
            ),
      );
}
