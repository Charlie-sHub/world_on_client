import 'package:flutter/material.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileTabBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      // Don't like the idea of having this hardcoded, but i can't find any other way to thing out the tabBar
      height: 52,
      child: const TabBar(
        labelColor: WorldOnColors.background,
        labelPadding: EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: Icon(Icons.explore),
            text: "Experiences",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: Icon(Icons.account_circle),
            text: "Relations",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: Icon(Icons.stars),
            text: "Achievements",
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
