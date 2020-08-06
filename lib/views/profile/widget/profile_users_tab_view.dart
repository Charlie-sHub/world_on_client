import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/cards/error_card.dart';
import 'package:worldon/views/core/widget/cards/user_card.dart';
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
            floatingActionButton: ProfileUsersUnicornDialer(user: user),
            body: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: state.users.size,
              itemBuilder: (context, index) {
                final _user = state.users[index];
                if (_user.isValid) {
                  return UserCard(user: _user);
                } else {
                  return ErrorCard(
                    entityType: "User",
                    valueFailure: _user.failureOption.fold(
                      () => "",
                      (failure) => failure.toString(),
                    ),
                  );
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

class ProfileUsersUnicornDialer extends StatelessWidget {
  const ProfileUsersUnicornDialer({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      hasBackground: false,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: Icon(Icons.format_list_bulleted),
      childButtons: [
        UnicornButton(
          hasLabel: true,
          labelText: "Followed",
          currentButton: FloatingActionButton(
            heroTag: "followed",
            mini: true,
            onPressed: () => context.bloc<ProfileUsersWatcherBloc>().add(
                  ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
                ),
            foregroundColor: WorldOnColors.accent,
            child: Icon(Icons.arrow_back),
          ),
        ),
        UnicornButton(
          hasLabel: true,
          labelText: "Following",
          currentButton: FloatingActionButton(
            heroTag: "following",
            mini: true,
            onPressed: () => context.bloc<ProfileUsersWatcherBloc>().add(
                  ProfileUsersWatcherEvent.watchFollowingUsersStarted(user),
                ),
            foregroundColor: WorldOnColors.red,
            child: Icon(Icons.arrow_forward),
          ),
        ),
      ],
    );
  }
}
