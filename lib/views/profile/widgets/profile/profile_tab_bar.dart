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
  static final _grey75 = Colors.grey.withOpacity(0.75);

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
    return SizedBox(
      height: kBottomNavigationBarHeight - 15,
      child: Material(
        color: WorldOnColors.background,
        elevation: 5,
        child: TabBar(
          labelColor: WorldOnColors.accent,
          unselectedLabelColor: _grey75,
          labelPadding: const EdgeInsets.all(2),
          indicatorColor: Colors.transparent,
          tabs: [
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: _grey75,
                  ),
                ),
              ),
              child: Tab(
                iconMargin: EdgeInsets.zero,
                text: S.of(context).experiences,
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: _grey75,
                  ),
                ),
              ),
              child: Tab(
                iconMargin: EdgeInsets.zero,
                text: S.of(context).profileRelationTab,
              ),
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
                iconMargin: EdgeInsets.zero,
                text: S.of(context).profileLogTab,
              ),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
