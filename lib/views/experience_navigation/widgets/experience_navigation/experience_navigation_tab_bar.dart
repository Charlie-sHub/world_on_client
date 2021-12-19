import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceNavigationTabBar extends StatelessWidget {
  const ExperienceNavigationTabBar({
    Key? key,
  }) : super(key: key);

  static final _grey75 = Colors.grey.withOpacity(0.75);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: kBottomNavigationBarHeight - 15,
        child: TabBar(
          labelColor: WorldOnColors.accent,
          unselectedLabelColor: _grey75,
          labelPadding: const EdgeInsets.all(2),
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              iconMargin: const EdgeInsets.all(2),
              text: S.of(context).experienceInformationTab,
            ),
            Tab(
              iconMargin: const EdgeInsets.all(2),
              text: S.of(context).objectivesTab,
            ),
            Tab(
              iconMargin: const EdgeInsets.all(2),
              text: S.of(context).mapTab,
            ),
          ],
        ),
      );
}
