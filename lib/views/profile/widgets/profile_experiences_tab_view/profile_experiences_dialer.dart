import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileExperiencesDialer extends StatelessWidget {
  const ProfileExperiencesDialer({
    Key? key,
    required this.user,
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
            onTap: () => context.read<ProfileExperiencesWatcherBloc>().add(
                  ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
                ),
            label: S.of(context).created,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            child: const Icon(
              Icons.create,
              color: WorldOnColors.accent,
            ),
          ),
          SpeedDialChild(
            onTap: () => context.read<ProfileExperiencesWatcherBloc>().add(
                  ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user),
                ),
            label: S.of(context).done,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            child: const Icon(
              Icons.done,
              color: WorldOnColors.primary,
            ),
          ),
          SpeedDialChild(
            onTap: () => context.read<ProfileExperiencesWatcherBloc>().add(
                  ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user),
                ),
            label: S.of(context).liked,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            child: const Center(
              child: Icon(
                Icons.favorite_rounded,
                color: WorldOnColors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
