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
    required this.isOwnProfile,
  }) : super(key: key);

  final User user;
  final bool isOwnProfile;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(5),
        child: SpeedDial(
          curve: Curves.easeInCirc,
          overlayColor: WorldOnColors.background,
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
              onTap: () => context.read<ProfileExperiencesWatcherBloc>().add(
                    ProfileExperiencesWatcherEvent
                        .watchExperiencesCreatedStarted(
                      user.id,
                    ),
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
                    ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(
                      user.id,
                    ),
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
                    ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(
                      user.id,
                    ),
                  ),
              label: isOwnProfile ? S.of(context).iLike : S.of(context).liked,
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
