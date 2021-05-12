import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/user_profile_button_watcher/user_profile_button_watcher_bloc.dart';
import 'package:worldon/application/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ElevatedButton(
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
        child: Text(
          S.of(context).editButton,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
