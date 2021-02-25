import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class OwnProfileTabBar extends StatelessWidget implements PreferredSizeWidget {
  const OwnProfileTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: WorldOnColors.white,
      // Don't like the idea of having this hardcoded, but i can't find any other way to thing out the tabBar
      height: 52,
      child: TabBar(
        labelColor: WorldOnColors.background,
        labelPadding: const EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.explore),
            text: S.of(context).experiences,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.account_circle),
            text: S.of(context).profileRelationTab,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.stars),
            text: S.of(context).profileAchievementsTab,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.timelapse_rounded),
            text: S.of(context).profileLogTab,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
