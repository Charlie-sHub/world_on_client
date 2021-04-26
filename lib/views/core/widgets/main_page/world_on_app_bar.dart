import 'package:flutter/material.dart';
import 'package:worldon/views/core/widgets/main_page/current_user_profile_button.dart';
import 'package:worldon/views/core/widgets/main_page/notifications_widget.dart';
import 'package:worldon/views/core/widgets/main_page/store_page_button.dart';

import 'logo_ink_well.dart';

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WorldOnAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const LogoInkWell(),
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
