import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class ExperienceNavigationTabBar extends StatelessWidget {
  const ExperienceNavigationTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      child: const TabBar(
        labelColor: WorldOnColors.white,
        labelPadding: EdgeInsets.all(2),
        indicatorColor: WorldOnColors.primary,
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.stream),
            text: "Experience Info",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.bullseye),
            text: "Objectives",
          ),
          Tab(
            iconMargin: EdgeInsets.all(2),
            icon: FaIcon(FontAwesomeIcons.mapMarkedAlt),
            text: "Map",
          ),
        ],
      ),
    );
  }
}
