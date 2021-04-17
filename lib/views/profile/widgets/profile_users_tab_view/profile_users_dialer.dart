import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileUsersDialer extends StatelessWidget {
  const ProfileUsersDialer({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SpeedDial(
        curve: Curves.easeInCirc,
        overlayColor: WorldOnColors.background,
        overlayOpacity: 0.1,
        animatedIcon: AnimatedIcons.ellipsis_search,
        animatedIconTheme: const IconThemeData(size: 40),
        children: [
          SpeedDialChild(
            onTap: () => context.read<ProfileUsersWatcherBloc>().add(
                  ProfileUsersWatcherEvent.watchFollowedUsersStarted(user),
                ),
            label: S.of(context).followers,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            child: const Icon(
              Icons.arrow_back,
              color: WorldOnColors.accent,
            ),
          ),
          SpeedDialChild(
            onTap: () => context.read<ProfileUsersWatcherBloc>().add(
                  ProfileUsersWatcherEvent.watchFollowingUsersStarted(user),
                ),
            label: S.of(context).following,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: WorldOnColors.red,
            ),
          ),
        ],
      ),
    );
  }
}
