import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/core/app_bar_title/app_bar_title_bloc.dart';
import 'package:worldon/application/core/main_page_show_case/main_page_show_case_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/routes/router.gr.dart';
import 'package:worldon/views/core/widgets/main_page/main_page_scaffold.dart';

class MainPage extends StatelessWidget {
  final bool isNewUser;

  const MainPage({
    Key? key,
    required this.isNewUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final experienceCreationButtonKey = GlobalKey();
    // What card will be shown if the user has nothing in its feed?
    // final _experienceCardKey = GlobalKey();
    final userLevelKey = GlobalKey();
    final keys = [
      experienceCreationButtonKey,
      // _experienceCardKey,
      userLevelKey,
    ];
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: _authenticationListener,
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
            create: (context) => getIt<MainPageShowCaseBloc>()
              ..add(
                MainPageShowCaseEvent.initialized(
                  isNewUser: isNewUser,
                ),
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
              child: ShowCaseWidget(
                onComplete: (_, key) => _onShowCaseComplete(
                  key,
                  experienceCreationButtonKey,
                  context,
                ),
                onFinish: () => context.read<MainPageShowCaseBloc>().add(
                      const MainPageShowCaseEvent.finished(),
                    ),
                builder: Builder(
                  builder: (context) =>
                      BlocListener<MainPageShowCaseBloc, MainPageShowCaseState>(
                    listener: (context, state) => state.maybeMap(
                      show: (_) =>
                          ShowCaseWidget.of(context).startShowCase(keys),
                      orElse: () => null,
                    ),
                    child: GestureDetector(
                      onTap: () =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      child: MainPageScaffold(
                        createExperienceShowKey: experienceCreationButtonKey,
                        userLevelShowKey: userLevelKey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onShowCaseComplete(
    GlobalKey<State<StatefulWidget>> key,
    GlobalKey<State<StatefulWidget>> experienceCreationButtonKey,
    BuildContext context,
  ) {
    if (key == experienceCreationButtonKey) {
      context.read<NavigationActorBloc>().add(
            NavigationActorEvent.profileTapped(
              currentUserProfile: false,
              userIdOption: none(),
            ),
          );
    }
  }

  void _authenticationListener(
    BuildContext context,
    AuthenticationState state,
  ) =>
      state.maybeMap(
        unAuthenticated: (_) => context.router.replace(
          const LogInPageRoute(),
        ),
        orElse: () => null,
      );

  void _watchUserListener(BuildContext context, WatchCurrentUserState state) =>
      state.maybeMap(
        loadFailure: (failureState) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: failureState.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        orElse: () => null,
      );

  void _navigationListener(BuildContext context, NavigationActorState state) =>
      state.map(
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
