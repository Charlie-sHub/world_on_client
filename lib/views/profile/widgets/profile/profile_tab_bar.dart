import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ProfileTabBar extends SliverPersistentHeaderDelegate {
  const ProfileTabBar({
    required this.maxExtent,
    required this.minExtent,
    required this.isOwn,
  });

  final bool isOwn;

  @override
  final double maxExtent;
  @override
  final double minExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: WorldOnColors.background,
      child: TabBar(
        labelColor: WorldOnColors.accent,
        labelPadding: const EdgeInsets.all(2),
        indicator: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: WorldOnColors.accent,
              width: 2,
            ),
          ),
        ),
        tabs: [
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.explore),
            text: S.of(context).experiences,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.people),
            text: S.of(context).profileRelationTab,
          ),
          /*
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.stars),
            text: S.of(context).profileAchievementsTab,
          ),
          */
          if (isOwn)
            Tab(
              iconMargin: const EdgeInsets.all(2),
              icon: const Icon(Icons.bookmarks_rounded),
              text: S.of(context).profileLogTab,
            ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
