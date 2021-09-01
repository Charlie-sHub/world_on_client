import 'package:flutter/material.dart';
import 'package:worldon/views/core/widgets/main_page/current_user_profile_button.dart';
import 'package:worldon/views/core/widgets/main_page/notifications_button.dart';
import 'package:worldon/views/core/widgets/main_page/store_page_button.dart';

import 'titles/app_bar_title_builder.dart';

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const AppBarTitleBuilder(),
      actions: const [
        StorePageButton(),
        NotificationsButton(),
        CurrentUserProfileButton(),
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 15);
}
