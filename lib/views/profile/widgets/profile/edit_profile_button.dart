import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/application/core/user_profile_button_watcher_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.router
          .push(
        ProfileEditingPageRoute(user: user),
      )
          .then(
        (_) {
          context.read<ProfileWatcherBloc>().add(
                ProfileWatcherEvent.initializedForeignOrOwn(
                  none(),
                ),
              );
          context.read<UserProfileButtonWatcherBloc>().add(
                const UserProfileButtonWatcherEvent.initialized(),
              );
        },
      ),
      padding: const EdgeInsets.all(0),
      icon: const Icon(
        MdiIcons.accountEdit,
        size: 40,
      ),
    );
  }
}
