import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:worldon/application/profile/profile_users_watcher/profile_users_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileUsersDialer extends StatelessWidget {
  const ProfileUsersDialer({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(5),
        child: SpeedDial(
          curve: Curves.easeInCirc,
          overlayColor: Colors.white,
          overlayOpacity: 0.1,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: const IconThemeData(
            size: 30,
          ),
          buttonSize: const Size(48, 48),
          childrenButtonSize: const Size(50, 50),
          childMargin: const EdgeInsets.symmetric(horizontal: 5),
          children: [
            SpeedDialChild(
              onTap: () => context.read<ProfileUsersWatcherBloc>().add(
                    ProfileUsersWatcherEvent.watchFollowedUsersStarted(user.id),
                  ),
              label: S.of(context).following,
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
                    ProfileUsersWatcherEvent.watchFollowingUsersStarted(
                      user.id,
                    ),
                  ),
              label: S.of(context).followersCaps,
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
