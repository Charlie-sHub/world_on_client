import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:worldon/application/profile/profile_experiences_watcher/profile_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileExperiencesUnicornDialer extends StatelessWidget {
  const ProfileExperiencesUnicornDialer({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      hasBackground: false,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: const Icon(Icons.format_list_bulleted),
      childButtons: [
        UnicornButton(
          currentButton: FloatingActionButton(
            heroTag: "created",
            mini: true,
            onPressed: () => context.bloc<ProfileExperiencesWatcherBloc>().add(
                  ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user),
                ),
            foregroundColor: WorldOnColors.primary,
            child: const Icon(Icons.create),
          ),
        ),
        UnicornButton(
          currentButton: FloatingActionButton(
            heroTag: "done",
            mini: true,
            onPressed: () => context.bloc<ProfileExperiencesWatcherBloc>().add(
                  ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user),
                ),
            foregroundColor: Colors.green,
            child: const Icon(Icons.done),
          ),
        ),
        UnicornButton(
          currentButton: FloatingActionButton(
            heroTag: "liked",
            mini: true,
            onPressed: () => context.bloc<ProfileExperiencesWatcherBloc>().add(
                  ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user),
                ),
            foregroundColor: WorldOnColors.red,
            child: const FaIcon(FontAwesomeIcons.solidHeart),
          ),
        ),
      ],
    );
  }
}
