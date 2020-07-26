import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/widget/cards/user_card.dart';
import 'package:worldon/views/core/widget/cards/user_error_card.dart';
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/core/widget/world_on_progress_indicator.dart';

import '../../../injection.dart';

class ProfileUsersTabView extends StatelessWidget {
  const ProfileUsersTabView({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileUsersWatcherBloc>()
        ..add(
          ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
        ),
      child: BlocBuilder<ProfileUsersWatcherBloc, ProfileUsersWatcherState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => WorldOnProgressIndicator(),
          loadSuccess: (state) => Scaffold(
            floatingActionButton: FollowSwitchFloatingButton(user: user),
            body: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.users.size,
              itemBuilder: (context, index) {
                final _user = state.users[index];
                if (_user.isValid) {
                  return UserCard(user: _user);
                } else {
                  return UserErrorCard(user: _user);
                }
              },
            ),
          ),
          loadFailure: (state) => InkWell(
            onTap: () async => context.bloc<ProfileUsersWatcherBloc>().add(
                  ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
                ),
            child: CriticalErrorDisplay(failure: state.failure),
          ),
        ),
      ),
    );
  }
}

class FollowSwitchFloatingButton extends HookWidget {
  const FollowSwitchFloatingButton({
    Key key,
    @required this.user,
  }) : super(key: key);
  
  final User user;
  
  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
      child: toggleState.value ? FollowingFloatingButton(toggleState: toggleState, user: user) : FollowedFloatingButton(toggleState: toggleState, user: user),
    );
  }
}

class FollowedFloatingButton extends StatelessWidget {
  const FollowedFloatingButton({
    Key key,
    @required this.toggleState,
    @required this.user,
  }) : super(key: key);
  
  final ValueNotifier<bool> toggleState;
  final User user;
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        toggleState.value = !toggleState.value;
        context.bloc<ProfileUsersWatcherBloc>().add(
          ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
        );
      },
      label: const Text("Followed"),
      icon: Icon(Icons.arrow_back),
    );
  }
}

class FollowingFloatingButton extends StatelessWidget {
  const FollowingFloatingButton({
    Key key,
    @required this.toggleState,
    @required this.user,
  }) : super(key: key);
  
  final ValueNotifier<bool> toggleState;
  final User user;
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        toggleState.value = !toggleState.value;
        context.bloc<ProfileUsersWatcherBloc>().add(
          ProfileUsersWatcherEvent.watchFollowingUsersStarted(user),
        );
      },
      label: const Text("Following"),
      icon: Icon(Icons.arrow_forward),
    );
  }
}
