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
      leading: const Image(
        height: 38,
        width: 38,
        image: AssetImage(Assets.worldOnLogo),
      ),
      title: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Text(
              "WORLD ON",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
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
