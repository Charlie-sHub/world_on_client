import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceNavigationTabBar extends StatelessWidget {
  const ExperienceNavigationTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TabBar(
        labelPadding: const EdgeInsets.all(2),
        indicatorColor: Colors.transparent,
        unselectedLabelColor: WorldOnColors.accent,
        labelColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(
              Icons.toc_rounded,
              color: WorldOnColors.accent,
            ),
            text: S.of(context).experienceInformationTab,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(
              Icons.follow_the_signs_outlined,
              color: WorldOnColors.accent,
            ),
            text: S.of(context).objectivesTab,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const Icon(
              Icons.map_rounded,
              color: WorldOnColors.accent,
            ),
            text: S.of(context).mapTab,
          ),
        ],
      ),
    );
  }
}
