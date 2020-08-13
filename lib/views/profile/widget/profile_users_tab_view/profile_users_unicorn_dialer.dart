import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

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
