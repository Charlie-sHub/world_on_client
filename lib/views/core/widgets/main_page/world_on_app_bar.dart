import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/main_page/current_user_profile_button.dart';
import 'package:worldon/views/core/widgets/main_page/notifications_button.dart';
import 'package:worldon/views/core/widgets/main_page/store_page_button.dart';

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: InkWell(
        onLongPress: () async {
          context.read<AuthenticationBloc>().add(
                const AuthenticationEvent.loggedOut(),
              );
        },
        child: Text(
          "World On",
          style: TextStyle(
            fontSize: 40,
            color: WorldOnColors.primary,
            fontFamily: "MovingSkate",
            shadows: [
              Shadow(
                offset: const Offset(
                  2,
                  2,
                ),
                blurRadius: 5,
                color: WorldOnColors.accent.withOpacity(0.75),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
      actions: const [
        StorePageButton(),
        NotificationsButton(),
        CurrentUserProfileButton(),
        SizedBox(width: 5),
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 15);
}
