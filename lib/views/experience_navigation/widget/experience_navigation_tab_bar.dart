import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceNavigationTabBar extends StatelessWidget {
  const ExperienceNavigationTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: TabBar(
        labelColor: WorldOnColors.white,
        labelPadding: const EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const FaIcon(FontAwesomeIcons.stream),
            text: S.of(context).experienceInformationTab,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const FaIcon(FontAwesomeIcons.bullseye),
            text: S.of(context).objectivesTab,
          ),
          Tab(
            iconMargin: const EdgeInsets.all(2),
            icon: const FaIcon(FontAwesomeIcons.mapMarkedAlt),
            text: S.of(context).mapTab,
          ),
        ],
      ),
    );
  }
}
