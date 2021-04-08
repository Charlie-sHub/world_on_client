import 'package:flutter/material.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/views/core/widgets/main_page/current_user_profile_button.dart';
import 'package:worldon/views/core/widgets/main_page/notifications_widget.dart';
import 'package:worldon/views/core/widgets/main_page/store_page_button.dart';

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WorldOnAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const Padding(
        padding: EdgeInsets.all(5),
        child: Image(
          image: AssetImage(Assets.worldOnLogo),
        ),
      ),
      actions: const <Widget>[
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
