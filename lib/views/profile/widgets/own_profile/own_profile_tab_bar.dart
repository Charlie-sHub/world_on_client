import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class OwnProfileTabBar extends SliverPersistentHeaderDelegate {
  const OwnProfileTabBar({
    @required this.maxExtent,
    @required this.minExtent,
  });

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
      color: WorldOnColors.white,
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
          /*
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(Icons.stars),
            text: S.of(context).profileAchievementsTab,
          ),
          */
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
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
