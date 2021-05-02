import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/main_page/current_user_profile_button.dart';
import 'package:worldon/views/core/widgets/main_page/notifications_widget.dart';
import 'package:worldon/views/core/widgets/main_page/store_page_button.dart';

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WorldOnAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: InkWell(
        onLongPress: () async {
          context.read<AuthenticationBloc>().add(
                const AuthenticationEvent.loggedOut(),
              );
        },
        child: const Text(
          "World On",
          style: TextStyle(
            fontSize: 50,
            color: WorldOnColors.primary,
            fontFamily: "MovingSkate",
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
